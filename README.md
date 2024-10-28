# SitecorePowerShell.NuGet

Packages available via [**nuget.org**](https://www.nuget.org)

- [https://www.nuget.org/packages/Spe](https://www.nuget.org/packages/Spe)
- [https://www.nuget.org/packages/Spe.Abstractions](https://www.nuget.org/packages/Spe.Abstractions)


## Dev notes

1. Update DLL
2. Run `pack.ps1`
3. Publish packages

    ```bash
    nuget push .\.nuspec\Spe\Spe.7.0.0.nupkg -ApiKey [API_KEY] -Source https://api.nuget.org/v3/index.json
    nuget push .\.nuspec\Spe.Abstractions\Spe.Abstractions.7.0.0.nupkg -ApiKey [API_KEY] -Source https://api.nuget.org/v3/index.json
    ```