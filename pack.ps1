$version = "7.0.0"
function Expand-Variables {
    param (
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true )]
        $File
    )
    $YTD = (Get-Date).Year
    $template = Get-Content $File.FullName
    $template = $template.Replace("`$version", $version)
    $template = $template.Replace("`$YTD", $YTD)
    $template | Set-Content -Path $File.FullName
}

".\.nuspec\Spe", ".\.nuspec\Spe.Abstractions" | % {
    Push-Location $_
    Get-Item *.nupkg | Remove-Item
    Get-Item *.nuspec | Expand-Variables
    nuget pack
    Pop-Location
}