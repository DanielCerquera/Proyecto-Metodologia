#language:es
Característica: Descargar un Bolsillo
  Yo como usuario de la App Bancolombia
  Quiero descargar un bolsillo
  Para retornar el saldo a mi cuenta

  @manual
  @UserStory=1308447
  Esquema del escenario: Descarga total de un bolsillo exitosamente
    Dado que Yo selecciono la opcion MIS_BOLSILLOS con los siguientes datos de prueba <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <nombreBolsillo> <monto> <numeroProducto> <tipoProducto>
    Cuando descarga parcialmente el bolsillo
    Entonces el deberia ver el mensaje de descarga exitosa
    Y Verifico los resultados en los archivos de iseries para descarga de bolsillos

    Ejemplos:
      | numeroDocumento | tipoDocumento | usuario    | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado |nombreBolsillo | monto  |numeroProducto |tipoProducto|
      |000001989672472|1|usertdmAF91|1234|4321|ACIERTO|000|0205|Descarga exitosa|PA RUMBEAR|10|40672472900|AHORRO|


