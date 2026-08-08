# Nano Markup for PowerShell

Idiomatic, zero-dependency Nano Markup decoder and writer for PowerShell 7.2+.

```powershell
$value = '..\n    name Ariana' | ConvertFrom-NanoMarkup
$source = $value | ConvertTo-NanoMarkup
```

The module follows PowerShell naming conventions with `ConvertFrom-NanoMarkup` and `ConvertTo-NanoMarkup`. It supports strings, ordered dictionaries, arrays, UTF-8 byte input, and LF/CRLF output.

## Install

Copy the `NanoMarkup` module into a PowerShell module path, or install the published package from the PowerShell Gallery when available.

## License
MIT. Specification: https://github.com/nohainc/nanomarkup.spec
