#language:es
Característica: Cargar una Trajeta Civica
  Yo como usuario de la App Bancolombia
  Quiero cargar una tarjeta civica

  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar realizar una carga civica por un valor inferior al monto minimo
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando intenta cargar la tarjeta civica
    Entonces el deberia ver respuesta al intentar cargar una civica

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario      | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | monto | numeroProducto | tipoProducto |
      | 1  | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       |

  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar realizar una carga civica por un valor superior al monto maximo
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando intenta cargar la tarjeta civica
    Entonces el deberia ver respuesta al intentar cargar una civica

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario      | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | monto | numeroProducto | tipoProducto |
      | 2  | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       |

  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar realizar una carga civica con un cliente con diferente tipo documento
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando intenta cargar la tarjeta civica
    Entonces el deberia ver respuesta al intentar cargar una civica

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento        | usuario         | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | monto | numeroProducto | tipoProducto |
      | 3  | 3186128251      | Tarjeta de identidad | usercivicati01  | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       |
      | 4  | 1881591360494   | Registro Civil       | usercivicarc01  | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       |
      | 5  | 116546588       | Nit                  | usernit01       | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40676588027    | AHORRO       |
      | 6  | 57678436        | Carnet diplomatico   | usercarnetdip01 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40678436022    | AHORRO       |


  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar realizarle una carga civica con un cliente diferente a cedula de extranjeria a otro tipo de documento
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando intenta cargar la tarjeta civica de un tipo de documento a recargar <tipoDocumentoCargar>
    Entonces el deberia ver respuesta al intentar cargar una civica

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario      | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | monto | numeroProducto | tipoProducto | tipoDocumentoCargar                  |
      | 7  | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       | Tarjeta de identidad                 |
      | 8  | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       | Cedula Extranjeria                   |
      | 9  | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       | Registro Civil                       |
      | 10 | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       | Civica al portador-AP                |
      | 11 | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       | Numero unico de identificacion -NUIP |

  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar realizarle una carga civica superando el tope Banco del cliente
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando intenta cargar la tarjeta civica de un tipo de documento a recargar <tipoDocumentoCargar>
    Entonces el deberia ver respuesta al intentar cargar una civica

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario      | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado            | monto    | numeroProducto | tipoProducto |
      | 12 | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Supera tope maximo permitido | 31000000 | 40672473900    | AHORRO       |


  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar realizarle una carga civica superando el tope maximo de la civica
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando intenta cargar la tarjeta civica de un tipo de documento a recargar <tipoDocumentoCargar>
    Entonces el deberia ver respuesta al intentar cargar una civica

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario      | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado               | monto  | numeroProducto | tipoProducto |
      | 13 | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Supera tope maximo de la civica | 501000 | 40672473900    | AHORRO       |


  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar realizarle una carga civica estado pendiente y verificar la alerta recibida del cliente
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando intenta cargar la tarjeta civica de un tipo de documento a recargar <tipoDocumentoCargar>
    Entonces el deberia ver respuesta al intentar cargar una civica

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario      | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | monto | numeroProducto | tipoProducto |
      | 14 | 000000505494916 | 1             | usercivica16 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       |

  @manual
    @UserStory=1705037
  Esquema del escenario: Intentar ingresar a la opcion de reacarga de civica con un cliente tipo NO VALIDO para recargar
    Dado que Yo selecciono la opcion Recargar con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <monto> <numeroProducto> <tipoProducto>
    Cuando ingreso a la opcion de Recarga
    Entonces deberia ver que no tiene un tipo de documento valido para recargar

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario          | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado | monto | numeroProducto | tipoProducto |
      | 15 | 102020          | 1             | userpasaporte20  | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       |
      | 16 | 900030          | 1             | userfidecomiso30 | 1234  | Acierto     | 000         | xxxx              | Carga exitosa     | 10000 | 40672473900    | AHORRO       |


