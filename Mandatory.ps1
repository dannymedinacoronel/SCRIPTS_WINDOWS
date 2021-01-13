#funció que te un paràmetre obligatori

function MandatoryTest([Parameter (Mandatory=$true)][string] $fName){
    if ($fName){
        Write-Host "Nombre del fichero. $fName"    
    }
    else{
        Write-Host "Error"
    }
}


MandatoryTest "Hola"