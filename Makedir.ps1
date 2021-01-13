Param ($path)
<#
  .\Makedir.ps1	     c:\sears\makedir
#>
function Makedir
{   write-host	"Cream el directori '$path'"
	New-Item   -ItemType   Directory
		   -Path $path
	CD $path
}
MakeDir