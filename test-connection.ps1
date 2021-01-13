#Comprovació d'adresses IP

$listado = get-content .\list_IP.txt

#Para cada IP del archivo
foreach ($ip in $listado){
    if (test-connection -ComputerName $ip -Count 1 -Quiet){
        #Si el test-connection es correcto
        Write-Host -BackgroundColor DarkGreen -ForegroundColor Black ('{0} - RESPONDE' -f $ip)
    }
    else{
        #Si el test-connection NO es correcto
        Write-Host -BackgroundColor DarkRed -ForegroundColor White ('{0} - NO RESPONDE' -f $ip)
    }
}