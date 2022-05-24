# language: es
Característica: SPE_046 Ajustar Transacción de Obtener Sesion
  Como certificador de la APP Personas
  quiero realizar las pruebas de las transacciones de la ruta critica
  para garantizar que el cambio del ajuste de la Trx 1200 fue exitoso.
  @manual
  Esquema del escenario: Ejecucion exitosa ruta critica Ajuste Transaccion Obtener Sesion en APP
    Dado que me encuentro ejecutando las pruebas de ajuste transaccion obtener sesion en APP
    Cuando lanzo la Transaccion <codTransaccion> - <descripcionTransaccion> por XML
    Entonces el sistema me responde <resultadoesperado>
    Ejemplos:
      | codTransaccion | descripcionTransaccion                                       | resultadoesperado |
      | 0369           | AUTENTICACION                                                | exitosamente      |
      | 1756           | CONSULTA DE SALDOS CONSOLIDADOS                              | exitosamente      |
      | 0410           | CONSULTA DE SALDOS DE FONDOS DE INVERSION                    | exitosamente      |
      | 0464           | CONSULTA DE MOVIMIENTOS CUENTA DE DEPOSITO                   | exitosamente      |
      | 0485           | INSCRIPCION DE CUENTAS                                       | exitosamente      |
      | 0491           | CONSULTA DE CUENTAS INSCRITAS                                | exitosamente      |
      | 0438           | TRANSFERENCIAS DESDE CUENTAS DE DEPOSITO A CUENTA CORRIENTE  | exitosamente      |
      | 0538           | TRANSFERENCIAS DESDE CUENTAS DE DEPOSITO A CUENTA DE AHORROS | exitosamente      |
  @manual
  Esquema del escenario: Ejecucion Transacciones con Sesscokie invalido en APP
    Dado que me encuentro ejecutando las pruebas de ajuste transaccion obtener sesion en APP
    Cuando lanzo la Transaccion <codTransaccion> - <descripcionTransaccion> por XML
    Entonces el sistema me responde <resultadoesperado>
    Ejemplos:
      | codTransaccion | descripcionTransaccion                                       | resultadoesperado |
      | 1756           | CONSULTA DE SALDOS CONSOLIDADOS                              | Sesion no existe  |
      | 0464           | CONSULTA DE MOVIMIENTOS CUENTA DE DEPOSITO                   | Sesion no existe  |
