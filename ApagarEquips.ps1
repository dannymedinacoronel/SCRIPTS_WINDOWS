#Script ApagarEquips.ps1
Param($equip) #parametre d'entrada
(get-wmiobject -class win32_operatingsystem -computername $equip).win32shutdown(12)