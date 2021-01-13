#funció que renombra un directori afegint-li la data

function Rename-ToDate ($fold){
    $d = Get-Date -UFormat "%Y%m%d"
    if ($fold.substring(($fold.Length-1),1) -eq "\"){
        Write-Host $fold $d
        #Rename-Item $fold $d
    }
    else{
        $n_fd = $fold + "_" + $d
        Write-Host $fold $n_fd
        #Rename-Item $fold $n_fd
    }
}

$Carpeta = "C:\SCRIPTS"
Rename-ToDate($Carpeta)