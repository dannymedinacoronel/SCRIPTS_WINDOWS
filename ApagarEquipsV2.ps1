#Script ApagarEquipsV2.ps1
Param($equip) #Parametre d'entrada
$estat - getwmiobject -query "select statuscode from win32_pingstatus where
f($estat statuscode -eq 0){
 (get-wmiobject -class win32_operatingsystem -computername $equip) win32shutdown(12)
}