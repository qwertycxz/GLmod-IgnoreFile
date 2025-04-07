#!/usr/bin/env pwsh
param ([Parameter(Mandatory = $true)][string]$item, [Parameter(Mandatory = $true)][string]$tmp)
foreach ($file in (git -C $item ls-files).Where{
	(git -C $item ls-files -ciX .workshopignore) -notcontains $_
} + (git -C $item ls-files -oX .workshopignore)) {
	New-Item (Split-Path "$tmp/$file" -Par) -I Directory
	New-Item "$tmp/$file" -I HardLink -Ta "$item/$file"
}
