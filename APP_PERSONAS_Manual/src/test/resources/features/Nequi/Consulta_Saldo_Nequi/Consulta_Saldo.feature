 #language: es

 Característica: consuilta saldo en la App Nequi
   Como Usuario de Nequi
   Quiero consulta el tango que tengo distribuido en la app Nequi
   Para pode conocer como está distribuido mi dinero

   @manual
   Esquema del escenario: Consuilta Saldo Nequi
     Dado el usuario <usuario> está logeado en la aplicación Nequi
     Cuando selecciona los saldo que se presenta en la parte superior derecha de la pantalla
     Entonces se valida que se muestre el mensaje "<mensaje>"

     Ejemplos:
       | usuario          | mensaje             |
       | Daniel Lasso     | Así está tu plata   |
       | Daniel Cerquera  | Así está tu plata   |
       | Pepito           | Así está tu plata   |