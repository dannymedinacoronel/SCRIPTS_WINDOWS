#Script ApagarEquiposV3.ps1
$equipsapagar - get_content -path "c:\scripts\equipsapagar.txt"
$equipsapagar | foreach-object {
	$equip = $_
	$stat = getwmiobject -class win32_operatingsystem -computername $equip) win32shutdown(12)
	}
