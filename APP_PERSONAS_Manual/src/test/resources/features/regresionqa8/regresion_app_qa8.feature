# language: es

Característica: Ejecucion de regresion APP con XML
  Como usuario de bancolombia quiero realizar la regresion de APP para las mejoras que se pantearon desde desarrollo en pruebas unitarias.

  @manual
  Esquema del escenario: Ejecucion de regresion APP con XML
    Dado que me encuentro ejecutando la regresion de APP
    Cuando lanzo la <codTransaccion> - <descripcionTransaccion> por XML
    Entonces el sistema me responde <resultadoesperado>

    Ejemplos:
      | codTransaccion | descripcionTransaccion                                       | resultadoesperado |
      | 0369           | AUTENTICACION                                                | exitosamente      |
      | 1756           | CONSULTA DE SALDOS CONSOLIDADOS                              | exitosamente      |
      | 0485           | INSCRIPCION DE CUENTAS                                       | exitosamente      |
      | 0491           | CONSULTA DE CUENTAS INSCRITAS                                | exitosamente      |
      | 0464           | CONSULTA DE MOVIMIENTOS CUENTA DE DEPOSITO                   | exitosamente      |
      | 0438           | TRANSFERENCIAS DESDE CUENTAS DE DEPOSITO A CUENTA CORRIENTE  | exitosamente      |
      | 0538           | TRANSFERENCIAS DESDE CUENTAS DE DEPOSITO A CUENTA DE AHORROS | exitosamente      |
      | 0429           | PAGO DE TARJETAS DE CREDITO                                  | exitosamente      |
