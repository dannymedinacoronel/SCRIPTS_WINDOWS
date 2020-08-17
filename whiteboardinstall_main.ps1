# Script de Powershell creado por Danny Medina Coronel @demcor_
function menu 
{ 
     param ( 
           [string]$Titulo = 'Opciones del Menu'
   
     ) 
     cls 
     Write-Host "========================================= $Titulo ==============================================" 
      
     
     Write-Host "1) Instalar Whiteboard" 
     Write-Host "2) Desinstalar Whiteboard " 
     Write-Host "3) Instalar Micrsoft Store"
     Write-Host "4) Ver aplicaciones instaladas de Microsoft Store"
     Write-Host "5) Abrir tienda no Oficial de Microsoft Store "
     Write-Host "S) Presiona 'S' para salir"  
     
     Write-Host " ================ Script de Powershell creado por Danny Medina Coronel @demcor_ ================" 
}

do 
{ 
     menu 
     $input = Read-Host "Elegir una Opción" 
     switch ($input) 
     { 
           '1' { 
                cls 
                    add-appxpackage .\Microsoft.Whiteboard_20.10713.5360.0_x64__8wekyb3d8bbwe.Appx
                    echo tarea finalizada
           } '2' { 
                cls 
                    Get-AppxPackage *whiteboard* | Remove-AppxPackage
           } '3' { 
                cls 
                    Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
           } '4' { 
                cls 
                    Get-AppxPackage

          } '5' { 
                cls 
                      Start-Process "https://store.rg-adguard.net/"
                     
           } 's' { 
                return 
           }  
     } 
     pause 
    

} 
until ($input -eq 's')


