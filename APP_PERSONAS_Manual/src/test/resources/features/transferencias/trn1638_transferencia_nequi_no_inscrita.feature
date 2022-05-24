#language:es
Característica: Realizar una transferencia a cuenta Nequi no inscrita
  Yo como usuario de la App Bancolombia
  Quiero hacer una transferencia a cuenta Nequi no inscrita


  @manual
    @UserStory=1958520
  Esquema del escenario: Transferencia a cuenta nequi no inscrita desde cuenta de depositos superando maximo monto acumulado nequi error 124
    Dado que Yo selecciono la opcion TRANSFERIR con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <numeroProducto> <tipoProducto> <monto> <tipoTransferencia> <numeroProductoDestino> <tipoProductoDestino> <opcionProductoOrigen> <opcionProductoDestino>
    Cuando realizo la transferencia
    Entonces deberia de ver el mensaje supera valor maximo personalizado
    Y Verifico los resultados en los archivos de iseries para transferencias a cuenta NEQUI no inscritas del escenario alterno para tope del producto nequi

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario  | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado                     | numeroProducto | tipoProducto | monto   | tipoTransferencia  | numeroProductoDestino | tipoProductoDestino | opcionProductoOrigen | opcionProductoDestino |
      | 1  | 000000000130060 | 1             | pocket60 | 1234  | 4321         | Alterno     | 150         | 1638              | Supera el tope maximo por transacción | 40610060004    | Corriente    | 3000001 | No inscritos Nequi | 3998608604            | Nequi               | Mis productos        |                       |

  @manual
    @UserStory=1958520
  Esquema del escenario: Transferencia a cuenta nequi no inscrita desde cuenta de depositos superando maximo numero de operaciones acumulado nequi error 123
    Dado que Yo selecciono la opcion TRANSFERIR con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <numeroProducto> <tipoProducto> <monto> <tipoTransferencia> <numeroProductoDestino> <tipoProductoDestino> <opcionProductoOrigen> <opcionProductoDestino>
    Cuando realizo la transferencia
    Entonces deberia de ver el mensaje supera valor maximo personalizado
    Y Verifico los resultados en los archivos de iseries para transferencias a cuenta NEQUI no inscritas del escenario alterno para tope del producto nequi

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario  | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado                                      | numeroProducto | tipoProducto | monto   | tipoTransferencia  | numeroProductoDestino | tipoProductoDestino | opcionProductoOrigen | opcionProductoDestino |
      | 2  | 000000000130060 | 1             | pocket60 | 1234  | 4321         | Alterno     | 150         | 1638              | Supera el numero de operaciones maximo por transacción | 40610060004    | Corriente    | 3000001 | No inscritos Nequi | 3998608604            | Nequi               | Mis productos        |                       |

  @manual
    @UserStory=1958520
  Esquema del escenario: Transferencia a cuenta nequi no inscrita desde cuenta de depositos superando maximo monto acumulado personalizado del canal error 705
    Dado que Yo selecciono la opcion TRANSFERIR con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <numeroProducto> <tipoProducto> <monto> <tipoTransferencia> <numeroProductoDestino> <tipoProductoDestino> <opcionProductoOrigen> <opcionProductoDestino>
    Cuando realizo la transferencia
    Entonces deberia de ver el mensaje supera valor maximo personalizado
    Y Verifico los resultados en los archivos de iseries para transferencias a cuenta NEQUI no inscritas del escenario alterno para tope del producto nequi

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario  | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado                     | numeroProducto | tipoProducto | monto   | tipoTransferencia  | numeroProductoDestino | tipoProductoDestino | opcionProductoOrigen | opcionProductoDestino |
      | 3  | 000000000130060 | 1             | pocket60 | 1234  | 4321         | Alterno     | 150         | 1638              | Supera el tope maximo por transacción | 40610060004    | Corriente    | 3000001 | No inscritos Nequi | 3998608604            | Nequi               | Mis productos        |                       |

  @manual
    @UserStory=1958520
  Esquema del escenario: Transferencia a cuenta nequi no inscrita desde cuenta de depositos superando maximo numero de operaciones personalizado acumulado del canal error 706
    Dado que Yo selecciono la opcion TRANSFERIR con los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <segundaClave> <orientacion> <codigoError> <codigoTransaccion> <resultadoEsperado> <numeroProducto> <tipoProducto> <monto> <tipoTransferencia> <numeroProductoDestino> <tipoProductoDestino> <opcionProductoOrigen> <opcionProductoDestino>
    Cuando realizo la transferencia
    Entonces deberia de ver el mensaje supera valor maximo personalizado
    Y Verifico los resultados en los archivos de iseries para transferencias a cuenta NEQUI no inscritas del escenario alterno para tope del producto nequi

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario  | clave | segundaClave | orientacion | codigoError | codigoTransaccion | resultadoEsperado                                      | numeroProducto | tipoProducto | monto   | tipoTransferencia  | numeroProductoDestino | tipoProductoDestino | opcionProductoOrigen | opcionProductoDestino |
      | 4  | 000000000130060 | 1             | pocket60 | 1234  | 4321         | Alterno     | 150         | 1638              | Supera el numero de operaciones maximo por transacción | 40610060004    | Corriente    | 3000001 | No inscritos Nequi | 3998608604            | Nequi               | Mis productos        |                       |