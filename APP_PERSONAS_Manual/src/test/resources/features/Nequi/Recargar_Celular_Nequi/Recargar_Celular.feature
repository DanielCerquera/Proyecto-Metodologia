 #language: es

 Característica: Recarga de celular desde la app Nequi
   Como usuario Nequi
   Quiero realizar una recarga a mi celula desde mi cuenta Nequi

   @manual
   Esquema del escenario: formulario recarga celular Nequi

     Dado que <usuario> esta logeado en la APP Nequi
     Cuando selecciona la opción "Armario"
     Y selecciona la opción <opcion>
     Entonces debera presentarse el formulario de recarga
     Y se verifica que se presenta los campos  "Celular, Operador, ¿Cuánto?

     Ejemplos:
     |usuario     |opcion             |
     |Daniel Lasso|Recarga de celular |

   @manual
   Esquema del escenario: Recarga celular Nequi

     Dado que <usuario> esta en la sección <opcion>
     Cuando ingresa en el campo "Cel" el número <numero>
     Y selecciona al operador <operador>
     Y ingresa el valor de $<valor>
     Entonces selecciona la opción recargar
     Y se presentará un mensaje <mensaje>

     Ejemplos:
       |usuario     |opcion             |numero     |operador |valor|mensaje        |
       |Daniel Lasso|Recarga de celular |3024513491 |Claro    |1000 |Recarga éxitosa|
       |Daniel Lasso|Recarga de celular |3024513491 |Avantel  |2000 |Recarga éxitosa|
       |Daniel Lasso|Recarga de celular |3024513491 |ETB      |1000 |Recarga éxitosa|
       |Daniel Lasso|Recarga de celular |3024513491 |Tigo     |1000 |Recarga éxitosa|


   @manual
   Esquema del escenario: Recarga celular Nequi Fallido

     Dado que <usuario> esta en la sección <opcion>
     Cuando ingresa en el campo "Cel" el número <numero>
     Y selecciona al operador <operador>
     Y ingresa el valor de $<valor>
     Entonces selecciona la opción recargar
     Y se presentará un mensaje <mensaje>

     Ejemplos:
       |usuario     |opcion             |numero     |operador |valor  |mensaje        |
       |Daniel Lasso|Recarga de celular |3024513491 |Movistar |100    |Recarga fallida|
       |Daniel Lasso|Recarga de celular |3024513491 |Avantel  |200    |Recarga fallida|
       |Daniel Lasso|Recarga de celular |3024513491 |ETB      |100    |Recarga fallida|
       |Daniel Lasso|Recarga de celular |3024513491 |Tigo     |-10000 |Recarga fallida|

