Clear-Host
$path = 'C:\repo\SitecorePowerShell\src\Spe\bin\Debug\Spe.dll'
[Reflection.Assembly]::ReflectionOnlyLoadFrom($path).CustomAttributes | `
    ? { $_.AttributeType.Name -eq "TargetFrameworkAttribute" } | `
    Select-Object -ExpandProperty ConstructorArguments | `
    Select-Object -ExpandProperty value