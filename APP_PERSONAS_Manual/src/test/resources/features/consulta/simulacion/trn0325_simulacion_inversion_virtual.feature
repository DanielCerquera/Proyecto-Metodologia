#language: es

Característica: Trn-0325 simulacion de inversion virtual en la app Bancolombia
  Como usuario de Bancolombia
  Quiero simular la inversion virtual
  Para conocer la rentabilaidad

  @manual
  Esquema del escenario: simulación de inversion virtual

    Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
    Cuando prepara la simulacion de inversión virtual con <valor> y <periodicidad>
    Entonces deberia ver el mensaje <mensaje>
    Y se verifica el archivo COMMFFLGWWW

    Ejemplos:

      | usuario  | dispositivo |   valor      |    periodicidad                              | mensaje               |
      | Juan     | Android     |  2000000     | Mensual                                      | Verifica la inversión |
      | Andres   | iOS         |  500000      | Mensual                                      | Verifica la inversión |
      | Luis     | Huawei      |  500000000   | Mensual                                      | Verifica la inversión |
      | Juan     | Android     |  2000000     | Al vencimiento                               | Verifica la inversión |
      | Andres   | iOS         |  500000      | Al vencimiento                               | Verifica la inversión |
      | Luis     | Huawei      |  500000000   | Al vencimiento                               | Verifica la inversión |

  @manual
  Esquema del escenario: Consulta simulacion exitosa de Inversion Virtual
    Dado que <usuario> quiero realizar la simulacion de inverson virtual en la SVP
    Cuando me autentico usando mis credenciales usuario <usuario> y clave <clave>
    Y preparo la inversion virtual desde una cuenta deposito <tipo cuenta> por valor <valor>,  periodicidad <periodicidad>
    Entonces verifico que se muestre el resultado esperado <Resultado esperado> de la transaccion
    Y verifico que se presente registro de la 0325 en el log canal COMFFLGWWW
    Y verifico que se presente el flujo E2E de la transacción en el Log del Canal

    Ejemplos:
      | ID caso | usuario | clave | valor   | tipo cuenta | periodicidad   | Resultado esperado                 |
      | 1       | juan    | 1234  | 500,000 | Ahorro      | mensual        | Se presenta pantalla de simulación |
      | 2       | pedro   | 1234  | 500,000 | Corriente   | mensual        | Se presenta pantalla de simulación |
      | 3       | diana   | 1234  | 500,000 | Pension     | mensual        | Se presenta pantalla de simulación |
      | 4       | juan    | 1234  | 500,000 | Ahorro      | al vencimiento | Se presenta pantalla de simulación |
      | 5       | pedro   | 1234  | 500,000 | Corriente   | al vencimiento | Se presenta pantalla de simulación |
      | 6       | diana   | 1234  | 500,000 | Pension     | al vencimiento | Se presenta pantalla de simulación |