 #language: es

 Característica: Transferencias a cuentas ACH en app Bancolombia
   Como usuario de Bancolombia
   Quiero realizar una transferencia a una cuenta ACH
   Para validar que el monto no sea modificado al hacer la transferencia


   @manual
   Esquema del escenario: 0638 - Transferencia a cuentas ACH

     Dado que el usuario con documento <documento> se autentica en la APP
     Cuando realiza una transferencia desde la cuenta deposito <cuenta> a la cuenta ACH <cuentaACH>
     Entonces deberia ver el mensaje <mensaje>
     Y se verifica el archivo <archivo> que el monto debitado sea el correcto

     Ejemplos:

       | documento | cuenta      | cuentaACH  | mensaje      		| archivo     |
       | 36622806  | 40672806015 | 8494949403 | Transaccion Exitosa | COMMFFLGWWW |
