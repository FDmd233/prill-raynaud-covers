param(
    [switch]$Clean
)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
Push-Location $root

function Invoke-Latexmk {
    param([string[]]$Arguments)

    # TeX Live's Windows wrapper writes console-codepage notices to stderr
    # even on success.  Treat the process exit code, not stderr, as decisive.
    $oldPreference = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    try {
        & latexmk @Arguments
        $exitCode = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $oldPreference
    }
    if ($exitCode -ne 0) {
        throw "latexmk failed with exit code $exitCode"
    }
}

try {
    # TeX Live's bundled Perl on Windows does not provide the inherited
    # C.UTF-8 locale.  The portable C locale prevents harmless stderr noise
    # from being promoted to a PowerShell terminating error.
    $env:LC_ALL = 'C'
    $env:LC_CTYPE = 'C'
    $env:LANG = 'C'

    # Fix the build time to 10 July 2026 00:00:00 UTC. Publication priority is
    # established by the external deposit, not by mutable PDF metadata.
    $env:SOURCE_DATE_EPOCH = '1783641600'
    $env:FORCE_SOURCE_DATE = '1'

    if ($Clean) {
        Invoke-Latexmk @('-C', '-r', '.\latexmkrc', '.\source\paper.tex') | Out-Null
        Invoke-Latexmk @('-C', '-r', '.\latexmkrc', '.\source\paper-anonymous.tex') | Out-Null
    }

    Invoke-Latexmk @('-r', '.\latexmkrc', '.\source\paper.tex')
    Invoke-Latexmk @('-r', '.\latexmkrc', '.\source\paper-anonymous.tex')

    New-Item -ItemType Directory -Force '.\output\pdf' | Out-Null
    Copy-Item '.\build\paper.pdf' '.\output\pdf\Prill_Raynaud_Final.pdf' -Force
    Copy-Item '.\build\paper-anonymous.pdf' '.\output\pdf\Prill_Raynaud_Anonymous.pdf' -Force

    $files = @(
        'original/Prill_Raynaud_English_NoAuthor_CHECKED.pdf',
        'output/pdf/Prill_Raynaud_Final.pdf',
        'output/pdf/Prill_Raynaud_Anonymous.pdf'
    )
    $lines = foreach ($file in $files) {
        $hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $file).Hash.ToLowerInvariant()
        "$hash  $file"
    }
    $checksumText = ($lines -join "`n") + "`n"
    [System.IO.File]::WriteAllText(
        (Join-Path $root 'CHECKSUMS.sha256'),
        $checksumText,
        [System.Text.Encoding]::ASCII
    )
}
finally {
    Pop-Location
}
