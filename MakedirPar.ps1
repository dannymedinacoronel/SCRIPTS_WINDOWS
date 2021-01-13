funcion MakeDir([string] $path = "testDir")
{
	write-Host = "Crear Dir '$path'"
	New-Item    -ItemType	Directory
		    -Path      $path
}

$path1 = "Test1"
MakeDir $path1

MakeDir