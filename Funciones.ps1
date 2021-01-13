function Main
{
	GetYesNoResponse
}
Function	GetYesNoResponse
{
	$validResponse = "Yes","y","No","N"
	$response = ""
	do {
		$response = read-host "select option ('Yes','Y','No','N')"
	}while ($validResponse -notcontains $response)
}

Main