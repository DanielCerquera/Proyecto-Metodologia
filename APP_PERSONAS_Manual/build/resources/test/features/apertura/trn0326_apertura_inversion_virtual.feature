#language: es

Característica: Trn-0326 Apertura de inversion virtual en la app Bancolombia
  Como usuario de Bancolombia
  Quiero hacer una apertura de inversion virtual
  Para ganar rentabilidad

  @manual
  Esquema del escenario: Apertura exitosa de Inversion Virtual
    Dado que <usuario> quiero realizar la apertua de inverson virtual en la SVP
    Cuando me autentico usando mis credenciales usuario <usuario> y clave <clave>
    Y realizo la inversion virtual desde una cuenta deposito <tipo cuenta> por valor <valor>,  periodicidad <periodicidad> y <codigo asesor>
    Entonces verifico que se muestre el resultado esperado <Resultado esperado> de la transaccion
    Y verifico que se presente registro de la 0326 en el log canal COMFFLGWWW
    Y verifico que se vea afectado el saldo de la cuenta deposito en el archivo SCIFFSALDO
    Y Verifico que se genere un registro de movimiento en el archivo SCIFFMRCMV
    Y verifico que se genere un registro con el numero de la inversion en el archivo CXREF
    Y verifico que se presente el flujo E2E de la transacción en el Log del Canal

    Ejemplos:
      | ID caso | usuario | clave | valor   | tipo cuenta | periodicidad   | Resultado esperado | codigo asesor     |
      | 1       | juan    | 1234  | 500,000 | Ahorro      | mensual        | Exitoso            | con codigo asesor |
      | 2       | pedro   | 1234  | 500,000 | Corriente   | mensual        | Exitoso            | sin codigo asesor |
      | 3       | diana   | 1234  | 500,000 | Pension     | mensual        | Exitoso            | con codigo asesor |
      | 4       | juan    | 1234  | 500,000 | Ahorro      | al vencimiento | Exitoso            | con codigo asesor |
      | 5       | pedro   | 1234  | 500,000 | Corriente   | al vencimiento | Exitoso            | sin codigo asesor |
      | 6       | diana   | 1234  | 500,000 | Pension     | al vencimiento | Exitoso            | con codigo asesor |

  @manual
  Esquema del escenario: Verificar que se muestren las cuentas personalizadas

    Dado que el <usuario> selecciono la opcion INVERSION VIRTUAL
    Cuando el usuario este en la pantalla de producto origen
    Entonces deberia ver las <cuenta> y <nombrePersonalizado>

    Ejemplos:
      | usuario        | cuenta    | nombrePersonalizado |
      | usertestcore12 | 406-069780-01 | nomina    |


  @manual
  Esquema del escenario: Apertura Inversion Virtual Alternos
    Dado que <usuario> quiero realizar la apertua de inverson virtual en la SVP
    Cuando me autentico usando mis credenciales usuario <usuario> y clave <clave>
    Y realizo la inversion virtual desde una cuenta deposito <tipo cuenta> sin saldo por valor <valor>,  periodicidad <periodicidad> y <codigo asesor>
    Entonces verifico que se muestre el resultado esperado <Resultado esperado> de la transaccion
    Y verifico que se presente registro de la 0326 en el log canal COMFFLGWWW
    Y verifico que se vea afectado el saldo de la cuenta deposito en el archivo SCIFFSALDO
    Y Verifico que se genere un registro de movimiento en el archivo SCIFFMRCMV
    Y verifico que se genere un registro con el numero de la inversion en el archivo CXREF
    Y verifico que se presente el flujo E2E de la transacción en el Log del Canal

    Ejemplos:
      | ID caso | usuario | clave | valor   | tipo cuenta | periodicidad   | Resultado esperado | codigo asesor     |
      | 1       | juan    | 1234  | 500,000 | Ahorro      | mensual        | Saldo insuficiente | con codigo asesor |
      | 2       | pedro   | 1234  | 500,000 | Corriente   | mensual        | Saldo insuficiente | sin codigo asesor |
      | 3       | diana   | 1234  | 500,000 | Pension     | mensual        | Saldo insuficiente | con codigo asesor |
      | 4       | juan    | 1234  | 500,000 | Ahorro      | al vencimiento | Saldo insuficiente | con codigo asesor |
      | 5       | pedro   | 1234  | 500,000 | Corriente   | al vencimiento | Saldo insuficiente | sin codigo asesor |
      | 6       | diana   | 1234  | 500,000 | Pension     | al vencimiento | Saldo insuficiente | con codigo asesor |


