#Funció que calcula el valor mitjà de dos nombres sensers

function GetAverage ([int] $a, [int] $b){
    return ($a+$b)/2
}

$average = GetAverage 2 3

Write-Host "Media es: $average"