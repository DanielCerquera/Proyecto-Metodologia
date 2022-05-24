#language:es
Característica: Cargar un Bolsillo
  Yo como usuario de la App Bancolombia
  Quiero cargar un bolsillo
  Para aumentar mi ahorro

  @manual
  @UserStory=1308445
  Esquema del escenario: Cargar un bolsillo y verificar que al ingresar el monto de carga no supere el saldo total de la cuenta
    Dado que Yo selecciono la opcion MIS_BOLSILLOS con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <primeraPregunta> <validarClave> <nombreBolsillo> <monto> <numeroProducto> <tipoProducto>
    Cuando carga uno de sus bolsillos
    Entonces el deberia ver respuesta al intentar cargar un bolsillo
    Y Verifico los resultados en los archivos de iseries para carga de bolsillos

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario    | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | primeraPregunta | validarClave  | nombreBolsillo | monto  | numeroProducto | tipoProducto |
      |1|000001989672473|1|usertdmAF92|1234|4321|Acierto|000|0204|Carga exitosa|||VIAJE A EUROPA|10000|40672473900|AHORRO|

  @manual
  @UserStory=1308445
  Esquema del escenario: Cargar un bolsillo y verificar que permita realizar carga superando el valor de la meta definido con anterioridad
    Dado que Yo selecciono la opcion MIS_BOLSILLOS con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <primeraPregunta> <validarClave> <nombreBolsillo> <monto> <numeroProducto> <tipoProducto>
    Cuando carga uno de sus bolsillos
    Entonces el deberia ver respuesta al cargar un bolsillo
    Y Verifico los resultados en los archivos de iseries para carga de bolsillos

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario    | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | primeraPregunta | validarClave  | nombreBolsillo | monto  | numeroProducto | tipoProducto |
      |2|000001989672473|1|usertdmAF92|1234|4321|Acierto|000|0204|Carga exitosa|||VIAJE A EUROPA|10000|40672473900|AHORRO|

  @manual
  @UserStory=1308445
  Esquema del escenario: Cargar un bolsillo y verificar que solo permita hacer transacciones monetarias con el valor disponible de la cuenta de depositos sin contar el saldo del bolsillo
    Dado que Yo selecciono la opcion MIS_BOLSILLOS con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <primeraPregunta> <validarClave> <nombreBolsillo> <monto> <numeroProducto> <tipoProducto>
    Cuando carga uno de sus bolsillos
    Entonces el deberia ver respuesta al cargar un bolsillo
    Y Verifico los resultados en los archivos de iseries para carga de bolsillos

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario    | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | primeraPregunta | validarClave  | nombreBolsillo | monto  | numeroProducto | tipoProducto |
      |3|000001989672473|1|usertdmAF92|1234|4321|Acierto|000|0204|Carga exitosa|||VIAJE A EUROPA|10000|40672473900|AHORRO|
