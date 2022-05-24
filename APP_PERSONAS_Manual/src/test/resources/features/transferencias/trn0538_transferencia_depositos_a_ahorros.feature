 #language: es

 Característica: Transferencia a cuenta de ahorros en app Bancolombia
   Como usuario de Bancolombia
   Quiero realizar una transferencia de una cuenta de depositos a una cuenta ahorros

   @manual
   Esquema del escenario: transferencia de depositos a cuenta de ahorros
     Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
     Cuando selecciona la opcion de transferencia con <saldo> de <cuentaOrigen> a <cuentaDestino> con <QR>
     Entonces deberia ver el mensaje <mensaje>
     Y se verifica el archivo COMMFFLGWWW

     Ejemplos:
       | usuario  | dispositivo |   saldo      		    | cuentaOrigen  |   CuentaDestino         |        mensaje                 |  QR    |Cuenta inscrita|
       | Juan     | Android     |  con saldo   		    | Ahorros       |   Ahorros               |  generacion exitosa            | Con QR |     Si        |
       | Andres   | iOS         |  sin saldo            | Corriente     |   Ahorros               |  No tiene saldo                | Sin QR |     Si        |
       | Luis     | Huawei      |  con valor no pertmito| Ahorros       |   Ahorros               |  ha superado el valor permitido| Con QR |     Si        |
       | Rosa     | Android     |  con saldo   		    | Corriente     |   Ahorros               |  generacion exitosa            | Con QR |     No        |
       | Lina     | Android     |  sin saldo   		    | Corriente     |   Ahorros               |  No tiene saldo                | Con QR |     Si        |
       | Carlos   | Android     |  con saldo   		    | Corriente     |   Caracteres (,,,,)     |  transaccion no permitida      | Sin QR |     No        |

   @manual
   Esquema del escenario: flujo transaccional transferencia de depositos a cuenta de ahorros
     Dado que el usuario esta en la APP
     Cuando selecciona la opción de transferencia de una cuenta deposito a una cuenta de ahorro
     Entonces deberia ver el mensaje exitoso
     Y se verifica  que se lancen las transacciones <Trn-1> <Trn-2> <Trn-3> <Trn-4><Trn-5><Trn-6><Trn-7><Trn-8><Trn-9>

     Ejemplos:
       | Trn-1            |  Trn-2                   |  Trn-3                       |Trn-4                            |Trn-5                          |Trn-6                            |  Trn-7              | Trn-8                                   | Trn-9                         |
       |Autenticacion 0369|Saldos consolidados - 1756|Listar Cuentas Deposito - 0360|Listar Fondos de inversion - 0410|Listar Cuentas Deposito - 0360 |Listar Fondos de inversion - 0410|Consulta costo (0888)|Transferencia cuentas bancolombia - 0538 |Listar Cuentas Deposito - 0360 |


   @manual
   Esquema del escenario: transferencia de deposito a cuenta ahorros superando el saldo disponible de la cuenta
     Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
     Cuando selecciona la opcion TRANSFERIR_DINERO y realizar una transferencia con <saldo> de <cuentaOrigen> a <cuentaDestino>
     Entonces deberia ver el mensaje <mensaje>
     Y se verifica el archivo COMMFFLGWWW

     Ejemplos:
       | usuario  | dispositivo |   saldo      		    | cuentaOrigen  |   cuentaDestino  	      |  mensaje                                                |
       | Juan     | Android     |  con saldo   		    | Corriente     |    Ahorros              |  DISPONIBLE INSUFICIENTE EN CUENTA A DEBITAR            |


   @manual
   Esquema del escenario:  transferencia bancolombia desde cuenta deposito a cuenta ahorros
     Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
     Cuando selecciona la opcion TRANSFERIR_DINERO y realizar una transferencia con <saldo> de <cuentaOrigen> a <cuentaDestino>
     Entonces deberia ver el mensaje <mensaje>
     Y se verifica el archivo COMMFFLGWWW

     Ejemplos:
       | usuario  | dispositivo |   saldo      		    | cuentaOrigen  |   cuentaDestino  	      |  mensaje                       |
       | Juan     | Android     |  con saldo   		    | Corriente     |    Ahorros              |  TRASNFERENCIA EXITOSA         |

   @manual
   Esquema del escenario:  transferencia bancolombia desde cuenta deposito a cuenta ahorros y cuentas BALM
     Dado que <usuario> ingresa sus credenciales en la APP Personas
     Cuando selecciona la opcion TRANSFERIR_DINERO y realizar una transferencia con <saldo> de <cuentaOrigen> a <cuentaDestino>
     Entonces deberia ver el mensaje <mensaje>
     Y se verifica el archivo COMMFFLGWWW que la transaccion se haya efectuado segun caso y <registro ITC> sea visible correctamente

     Ejemplos:
       | usuario  |   saldo      	    | cuentaOrigen  |   cuentaDestino  	         |  mensaje                       | registro ITC |
       | Juan     |  200000   		    | Corriente     | BALM                       |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  1200000   		    | Corriente     | BALM                       |  TOPE SUPERADO ERROR 004       | NO           |
       | Juan     |  200000   		    | Ahorros       | BALM                       |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  1200000   		    | Ahorros       | BALM                       |  TOPE SUPERADO ERROR 004       | NO           |
       | Juan     |  con saldo   	    | Corriente     | Ahorros                    |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  con saldo   	    | Ahorros       | Ahorros                    |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  700000   		    | Corriente     | BALM                       |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  700000   		    | Ahorros       | BALM                       |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  1-300000 2-500000  | Corriente     | BALM                       |  1 - EXITOSA 2 - TOPE SUPERADO | SI           |
       | Juan     |  1-300000 2-500000  | Ahorros       | BALM                       |  1 - EXITOSA 2 - TOPE SUPERADO | SI           |
       | Juan     |  Con saldo 		    | Corriente     | Corriente propia           |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  Con saldo 		    | Ahorros       | Ahorros propia             |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  Con Saldo 		    | Corriente     | Corriente inscrita         |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  Con Saldo 		    | Ahorros       | Ahorros inscrita           |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  con saldo   	    | Corriente     | Ahorros por QR             |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  con saldo   	    | Ahorros       | Ahorros por QR             |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  Con saldo 		    | Corriente     | Corriente propia por QR    |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  Con saldo 		    | Ahorros       | Ahorros propia por QR      |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  Con Saldo 		    | Corriente     | Corriente inscrita por QR  |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  Con Saldo 		    | Ahorros       | Ahorros inscrita por QR    |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  con saldo   	    | Corriente     | BALM por QR                |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  con saldo   	    | Ahorros       | BALM por QR                |  TRASNFERENCIA EXITOSA         | SI           |
       | Juan     |  con saldo   	    | Corriente     | Ahorros tope banco         |  RECHAZADA POR TOPES           | NO           |
       | Juan     |  con saldo   	    | Ahorros       | Ahorros tope banco         |  RECHAZADA POR TOPES           | NO           |
       | Juan     |  con saldo   	    | Corriente     | Ahorros tope personalizado |  RECHAZADA POR TOPES           | NO           |
       | Juan     |  con saldo   	    | Ahorros       | Ahorros tope personalizado |  RECHAZADA POR TOPES           | NO           |