 #language: es

 Característica: Sacar plata desde Nequi
   Como usuario de Nequi
   Quiero reaizar un retiro desde Cajero o Punto Físico
   Para desembalarme cuando no tenga efectivo

   @manual
   Esquema del escenario: Saca plata opcion Cajero

     Dado que <usuario> esta en la APP Nequi
     Y se presenta en la pantalla "Mochila"
     Cuando selecciona la opcion representada con el simbolo "$"
     Y selecciona la opción <opcion>
     Cuando selecciona la opción para sacar <dondeSacar>
     Entonces deberá presentarse las opciones para sacar
     Y seleccionará la opción <opcionSacar>
     Entonces deberá presentarse el OTP para retirar

      Ejemplos:
      |usuario       |opcion| dondeSacar| opcionSacar      |
      |Daniel Lasso  |Saca  | Disponible| Cajero           |
      |Daniel Lasso  |Saca  | Disponible| Punto Físico     |


   @manual
   Esquema del escenario: Saca plata opcion Cajero Fallo

     Dado que <usuario> esta en la APP Nequi
     Y se presenta en la pantalla "Mochila"
     Cuando selecciona la opcion representada con el simbolo "$"
     Y selecciona la opción <opcion>
     Cuando selecciona la opción para sacar <dondeSacar>
     Entonces deberá presentarse las opciones para sacar
     Y seleccionará la opción <opcionSacar>
     Entonces deberá presentarse el mensaje <mensajeErro>

     Ejemplos:
       |usuario       |opcion| dondeSacar| opcionSacar      |mensajeErro                      |
       |Daniel Lasso  |Saca  | Disponible| Cajero           |Hubo un error intentalo más tarde|
       |Daniel Lasso  |Saca  | Disponible| Punto Físico     |Hubo un error intentalo más tarde|
