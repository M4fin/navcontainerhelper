param(
    [switch] $Silent,
    [string[]] $bcContainerHelperConfigFile = @()
)

. (Join-Path $PSScriptRoot "InitializeModule.ps1") `
    -Silent:$Silent `
    -bcContainerHelperConfigFile $bcContainerHelperConfigFile `
    -moduleName $MyInvocation.MyCommand.Name `
    -moduleDependencies @( 'BC.HelperFunctions' )

. (Join-Path $PSScriptRoot "HelperFunctions.ps1")

# BC Authentication helper functions
. (Join-Path $PSScriptRoot "Auth\New-BcAuthContext.ps1")
. (Join-Path $PSScriptRoot "Auth\Renew-BcAuthContext.ps1")
