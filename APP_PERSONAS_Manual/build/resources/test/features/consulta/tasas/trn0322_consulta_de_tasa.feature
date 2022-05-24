#language: es

Característica: Trn-0232 consulta de tasas en app Bancolombia para inversión virtual
Como usuario de Bancolombia
Quiero aconsultar las tasas de rentabilidad
Para conocer la rentabilidad.

  @manual
  Esquema del escenario: Consulta de topes por transacción para inversión virtual

    Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
    Cuando ingresa a inversion virtual
    Y prepara los datos hasta el valor
    Entonces deberia ver el valor minimo y maximo
    Y se verifica el archivo COMMFFLGWWW

    Ejemplos:

    | usuario  | dispositivo |
    | Juan     | Android     |
    | Andres   | iOS         |
    | Luis     | Huawei      |

  @manual
  Esquema del escenario: Consulta tasa exitosa de Inversion Virtual
    Dado que <usuario> quiero realizar la consulta tasa de inverson virtual en la SVP
    Cuando me autentico usando mis credenciales usuario <usuario> y clave <clave>
    Y preparo la inversion virtual desde una cuenta deposito <tipo cuenta> por valor <valor>,  periodicidad <periodicidad>
    Entonces verifico que se muestre el resultado esperado <Resultado esperado> de la transaccion
    Y verifico que se presente registro de la 0322 en el log canal COMFFLGWWW
    Y verifico que se presente el flujo E2E de la transacción en el Log del Canal

    Ejemplos:
      | ID caso | usuario | clave | valor   | tipo cuenta | periodicidad   | Resultado esperado            |
      | 1       | juan    | 1234  | 500,000 | Ahorro      | mensual        | Se presenta la tabla de tasas |
      | 2       | pedro   | 1234  | 500,000 | Corriente   | mensual        | Se presenta la tabla de tasas |
      | 3       | diana   | 1234  | 500,000 | Pension     | mensual        | Se presenta la tabla de tasas |
      | 4       | juan    | 1234  | 500,000 | Ahorro      | al vencimiento | Se presenta la tabla de tasas |
      | 5       | pedro   | 1234  | 500,000 | Corriente   | al vencimiento | Se presenta la tabla de tasas |
      | 6       | diana   | 1234  | 500,000 | Pension     | al vencimiento | Se presenta la tabla de tasas |

