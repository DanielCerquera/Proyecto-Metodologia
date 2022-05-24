# language: es

Característica: Trn-1460 Consulta de detalle cuentas de deposito en la APP
  Como usuario de la APP Bancolombia
  Quiero realizar la consulta de detalle y movimientos
  Para conocer los datos del producto cuenta de deposito

  @manual
  Esquema del escenario: Consulta exitosa de detalle cuentas de deposito
    Dado que el usuario <usuario> se autentico en la APP
    Cuando realiza la consulta de detalle de le cuenta <cuenta>
    Entonces deberia ver los detalles y los movimientos de la cuenta de deposito
    Y se verifica el resultado en el archivo <archivo>

    Ejemplos:
      | usuario  | cuenta        | archivo    |
      | 58154620 | 406-746200-03 | COMFFLGWWW |
      | 89674523 | 406-745230-23 | COMFFLGWWW |

  @manual
  Esquema del escenario: Flujo transaccional Consulta detalle cuentas deposito

    Dado que el usuario esta en la APP
    Cuando realiza la consulta de detalles
    Entonces deberia ver el detalle y los movimientos de la cuentas de deposito
    Y se verifica  que se lancen las transacciones <Trn-1> <Trn-2> <Trn-3> <Trn-4>

    Ejemplos:

      | Trn-1                | Trn-2                           | Trn-3                               |
      | Autenticacion - 0369 | Detalle Cuentas Deposito - 1460 | Movimientos Cuentas Deposito - 0464 |



