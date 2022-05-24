#language:es
Característica: Consultar Mis Bolsillos en la APP Bancolombia
  Yo como usuario
  Quiero consultar Mis Bolsillos
  Para visualizar el saldo de mis bolsillos creados

  @manual
  @UserStory=1308438
  Esquema del escenario: Consultar Mis Bolsillos en la App con usuario sin cuentas validadas para crear
    Dado que Yo selecciono la opcion MIS_BOLSILLOS con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado>
    Cuando consulto mis bolsillos
    Entonces se valida la consulta del bolsillo
    Y verifico los resultados en los archivos de iseries para consulta de bolsillos

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario    | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado |
      |1|000001989672472|1|usertdmAF91|1234|4321|Acierto|000|0208|TRANSACCION EXITOSA|

  @manual
  @UserStory=1308438
  Esquema del escenario: Consultar Mis Bolsillos en la App con usuario con bolsillos y verificar que la categoria que se pinta en front sea la categoría que banco envia
    Dado que Yo cargo los datos de la prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado>
    Y yo quiero ingresar a MIS_BOLSILLOS
    Cuando consulto mis bolsillos
    Entonces se valida la consulta de la categoria del bolsillo
    Y verifico los resultados en los archivos de iseries para consulta de bolsillos

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario    | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado |
      |2|000001989672472|1|usertdmAF91|1234|4321|Alterno|000|0208|TRANSACCION EXITOSA|
