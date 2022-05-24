 #language: es

 Característica: Recargar plata desde Nequi
   Como usuario de Nequi
   Quiero recargar mi Nequi desde Plata al toque, Con efectivo o desde otro banco
   Para desembalarme cuando no tenga efectivo

   @manual
   Esquema del escenario: Recarga Nequi

     Dado que <usuario> esta en la APP Nequi
     Y se presenta en la pantalla "Mochila"
     Cuando selecciona la opcion representada con el simbolo "$"
     Cuando selecciona la opción <opcion>
     Entonces deberá presentarse la opciones <opcionSacar>

     Ejemplos:
       |usuario       |opcion         | opcionSacar                                               |
       |Daniel Lasso  |Recargar Nequi | Plata al toque, Con efectivo, Desde otro banco            |
       |Daniel Lasso  |Recargar Nequi | Plata al toque, Con efectivo, Desde otro banco            |


   @manual
   Esquema del escenario: Recarga Nequi Fallo

     Dado que <usuario> esta en la APP Nequi
     Y se presenta en la pantalla "Mochila"
     Cuando selecciona la opcion representada con el simbolo "$"
     Cuando selecciona la opción <opcion>
     Entonces deberá presentarse la opción <opcionSacar>

     Ejemplos:
       |usuario       |opcion         | opcionSacar                           |
       |Juanito Perez |Recargar Nequi | Se ha presentado un error de conexión |
       |Pepito Perez  |Recargar Nequi | Hubo un problema                      |
       |Andrés Perez  |Recargar Nequi | En estos momentos no puedes recargar  |


