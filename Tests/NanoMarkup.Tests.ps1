Import-Module "$PSScriptRoot/../NanoMarkup/NanoMarkup.psd1" -Force
Describe 'NanoMarkup' {
 It 'round trips mappings and sequences' { $v=[ordered]@{name='Ariana';items=@('one','two')}; (ConvertFrom-NanoMarkup (ConvertTo-NanoMarkup $v)).name | Should -Be 'Ariana' }
 It 'accepts byte input' { (ConvertFrom-NanoMarkup ([Text.Encoding]::UTF8.GetBytes('hello'))) | Should -Be 'hello' }
 It 'rejects invalid keys' { { ConvertTo-NanoMarkup ([ordered]@{'bad key'='x'}) } | Should -Throw }
}
