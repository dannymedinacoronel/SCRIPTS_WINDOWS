param ([double] $farenheit)

function ConvertFarToCel ([double] $far)
{
	$celsius = $far - 32
	$celsius = $celsius / 1.8
	$celsius
}

$celsius = ConvertFarToCel $farenheit
"$farenheit grausFarenheit són $Celsius graus"
