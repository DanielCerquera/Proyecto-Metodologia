# language: es

Característica: Trn-1360 Consulta de cuentas de deposito en la APP
  Como usuario de la APP Bancolombia
  Quiero realizar la consulta de la transaccion 1360
  Para verificar que solo muestre las cuenta de deposito activas

  @manual
  Esquema del escenario: Consulta exitosa de cuentas de deposito
    Dado que el usuario <usuario> se autentico en la APP
    Cuando realiza la consulta de las cuentas de depositos
    Entonces deberia ver las cuentas de depositos activas
    Y se verifica el resultado en el archivo <archivo>

    Ejemplos:
      | usuario     | archivo    |
      | 1040748555  |  COMFFLGWWW |

