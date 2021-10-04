#Daniel Ernesto Rangel Perez
#Esteban Osorio Rodriguez

Import-Module Tarea\modulo.psm1
New-ModuleManifest -Path 'C:\Program Files\WindowsPowerShell\Modules\Tarea\manifiesto.psd1' -Author "Wi-FiBotz" -RootModule modulo.psm1 -Description "Manifiesto de tarea E2"

$a = 0
while($a -eq 0){
 $opc = Read-Host "
 [1]Ver Status
 [2]Cambiar Status
 [3]Ver Perfil Red
 [4]Cambiar Perfil Red
 [5]Ver Reglas Bloqueo
 [6]Agregar Reglas Bloqueo
 [7]Eliminar Reglas Bloqueo
 [0]Salir

 Elige una opcion"
 
  switch($opc){
    1{
        Ver-StatusPerfil
        Write-Host "*********************************************"
        break
    }
    
    2{
        Cambiar-StatusPerfil
        Write-Host "*********************************************"
        break
    }
    3{
        Ver-PerfilRedActual
        Write-Host "*********************************************"
        break
    }
    4{
        Cambiar-PerfilRedActual
        Write-Host "*********************************************"
        break
    }
    5{
        Ver-ReglasBloqueo
        Write-Host "*********************************************"
        break
    }
    6{
        Agregar-ReglasBloqueo
        Write-Host "*********************************************"
        break
    }
    7{
        Eliminar-ReglasBloqueo
        Write-Host "*********************************************"
        break
    }
    0{
        $a = 1
        Write-Host "Adios =)"
    }
  }
}