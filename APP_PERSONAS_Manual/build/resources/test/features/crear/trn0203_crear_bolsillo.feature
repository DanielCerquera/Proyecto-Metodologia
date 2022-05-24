#language:es
Característica: Crear un bolsillo exitosamente en la APP
  Yo como usuario
  Quiero Crear un bolsillo
  Para ahorrar

  @manual
  @UserStory=1308434
  Esquema del escenario: Crear un bolsillo con cuenta valida al cliente que tiene 10 bolsillos creados con anterioridad
    Dado que Yo selecciono la opcion MIS_BOLSILLOS con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <codigoError> <codigoTransaccion> <resultadoEsperado> <numeroProducto> <categoria> <nombrePersonalizado> <meta>
    Cuando intento crear un bolsillo
    Entonces se valida la creacion del bolsillo
    Y verifico los resultados en los archivos de iseries para crear bolsillos

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario    | clave | segundaClave | codigoError | codigoTransaccion | resultadoEsperado |categoria|numeroProducto|nombrePersonalizado|meta|
      |1|000001989672472|1|usertdmAF91|1234|4321|000|0203|exitosa|Viajes|40672472900|Reuniones|300000|
