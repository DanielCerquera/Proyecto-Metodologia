#language: es

Característica: Trn-0640 avance de tarjeta de credito en app Bancolombia
  Como usuario de Bancolombia
  Quiero realizar un avance de tarjeta de credito
  Para disponer de dinere en mi cuenta de deposito.


  @manual
  Esquema del escenario: Realizar avance exitoso con tarjeta de credito American Express por la opcion Transferir Dinero a una cuenta propia ahorro
    Dado que Yo selecciono la opcion TRANSFERIR_DINERO con los siguientes datos de prueba <usuario> <clave>
    Cuando el envia dinero desde su tarjeta de credito <tipoTarjetaCredito> <numeroTarjetaCredito> <codigoSeguridad>
    Entonces se valida el avance exitoso <orientacion> <resultadoEsperado>
    Y Verifico los resultados en los archivos de iseries para avance tarjeta de credito del escenario exitoso <codigoTransaccion><numeroDocumento><codigoError><monto><codigoSeguridad>

    Ejemplos:
      | ID | numeroDocumento | usuario | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado   | tipoTarjetaCredito | numeroTarjetaCredito | codigoSeguridad | monto | tipoProductoDestino | productoDestino |
      |1|30001012|UserAvanceo2|1234|Acierto|0|640|Avance exitoso|1|0377813125406034|1952|20000|Ahorro|406-710120-31|


  @manual
  Esquema del escenario: Realizar avance exitoso con tarjeta de credito Visa o Mastercard por la opcion Transferir Dinero a una cuenta propia corriente
    Dado que Yo selecciono la opcion TRANSFERIR_DINERO con los siguientes datos de prueba <usuario> <clave>
    Cuando el envia dinero desde su tarjeta de credito <tipoTarjetaCredito> <numeroTarjetaCredito> <codigoSeguridad>
    Entonces se valida el avance exitoso <orientacion> <resultadoEsperado>
    Y Verifico los resultados en los archivos de iseries para avance tarjeta de credito del escenario exitoso <codigoTransaccion><numeroDocumento><codigoError><monto><codigoSeguridad>

    Ejemplos:
      | ID | numeroDocumento | usuario | clave | orientacion | codigoError | codigoTransaccion | resultadoEsperado   | tipoTarjetaCredito | numeroTarjetaCredito | codigoSeguridad | monto | tipoProductoDestino | productoDestino |
      |1|30001012|UserAvanceo2|1234|Acierto|0|640|Avance exitoso|1|0377813125406034|1952|20000|Ahorro|406-710120-31|


  @manual
  Esquema del escenario: Realizar un avance exitoso de tarjeta de credito American Express por la opcion realizar avance y desembolso a una cuenta propia corriente
    Dado que Yo selecciono la opcion REALIZAR_AVANCE con los siguientes datos de prueba <usuario> <clave>
    Cuando el realiza avance desde su tarjeta de credito <tipoTarjetaCredito> <numeroTarjetaCredito> <codigoSeguridad>
    Entonces se valida el avance exitoso <orientacion> <resultadoEsperado>
    Y Verifico los resultados en los archivos de iseries para avance tarjeta de credito del escenario exitoso <codigoTransaccion><numeroDocumento><codigoError><monto><codigoSeguridad>

    Ejemplos:
      | ID | numeroDocumento  | usuario | clave  | orientacion | codigoError | codigoTransaccion | resultadoEsperado  | tipoTarjetaCredito | numeroTarjetaCredito | codigoSeguridad | monto  | codigoSeguridad |
      |3|30001012|UserAvanceo2|1234|Acierto|0|640|Avance exitoso|1|0377813125406034|1952|22000|406-110120-01|

  @manual
  Esquema del escenario: Realizar avance exitoso con tarjeta de credito American Express por la opcion Transferir Dinero a una cuenta inscrita ahorro
    Dado que Yo selecciono la opcion TRANSFERIR_DINERO con los siguientes datos de prueba <usuario> <clave> <tipoTarjetaCredito> <numeroTarjetaCredito> <codigoSeguridad>
    Cuando el envia dinero a una cuenta inscrita <productoDestino> <tipoProductoDestino>
    Entonces se valida el avance exitoso <orientacion> <resultadoEsperado>
    Y Verifico los resultados en los archivos de iseries para avance tarjeta de credito del escenario exitoso <codigoTransaccion><numeroDocumento><codigoError><monto>

    Ejemplos:
      | ID | numeroDocumento  | usuario | clave  | orientacion | codigoError | codigoTransaccion | resultadoEsperado   | tipoTarjetaCredito | numeroTarjetaCredito | codigoSeguridad | monto | tipoProductoDestino | productoDestino |
      |5|30001012|UserAvanceo2|1234|Acierto|0|640|Avance exitoso|1|0377813125406034|1952|24000|Corriente|406-110110-02|

  @manual
  Esquema del escenario: Realizar avance exitoso con tarjeta de credito Visa o Mastercard por la opcion realizar avance y desembolso a una cuenta inscrita corriente
    Dado que Yo selecciono la opcion REALIZAR_AVANCE con los siguientes datos de prueba <usuario> <clave>
    Cuando el realiza avance a una cuenta inscrita <productoDestino> <tipoProductoDestino><tipoTarjetaCredito><numeroTarjetaCredito><codigoSeguridad>
    Entonces se valida el avance exitoso <orientacion> <resultadoEsperado>
    Y Verifico los resultados en los archivos de iseries para avance tarjeta de credito del escenario exitoso <codigoTransaccion><numeroDocumento><codigoError><monto><productoDestino>

    Ejemplos:
      | ID | numeroDocumento  | usuario | clave  | orientacion | codigoError | codigoTransaccion | resultadoEsperado  | tipoTarjetaCredito | numeroTarjetaCredito | codigoSeguridad | monto | tipoProductoDestino | productoDestino |
      |6|30001011|UserAvanceo1|1234|Acierto|0|640|Avance exitoso|1|5303720234955587|754|25000|Ahorro|406-714540-34|



  @manual
  Esquema del escenario: Realizar avance no exitoso con tarjeta de credito American Express por la opcion Transferir Dinero a una cuenta propia ahorro con el codigo de seguridad errado
    Dado que Yo selecciono la opcion TRANSFERIR_DINERO con los siguientes datos de prueba <usuario> <clave>
    Cuando el envia dinero desde su tarjeta de credito <tipoTarjetaCredito><numeroTarjetaCredito><codigoSeguridad>
    Entonces se valida el avance no exitoso por codigo de seguridad errado <orientacion> <resultadoEsperado>
    Y Verifico los resultados en los archivos de iseries para avance tarjeta de credito del escenario alterno <codigoTransaccion><numeroDocumento><codigoError><monto><productoDestino>

    Ejemplos:
      | ID | numeroDocumento  | usuario | clave  | orientacion | codigoError | codigoTransaccion | resultadoEsperado  | tipoTarjetaCredito | numeroTarjetaCredito | codigoSeguridad | monto | tipoProductoDestino | productoDestino |
      |6|30001011|UserAvanceo1|1234|Acierto|0|640|Avance exitoso|1|5303720234955587|754|25000|Ahorro|406-714540-34|







  @manual
  Esquema del escenario: validar que al listar tarjetas, el cliente pueda visualizar las tarjetas
  que le permiten realizar avances hacia una cuenta depositos

    Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
    Cuando entra a la opcion de avance de tarjeta de credito
    Entonces deberia ver el listado de tarjatas disponibles para realizar un avance
    Y se vereifica que solo liste tarjetas disponibles para realizar un avance

    Ejemplos:
      | usuario         | dispositivo |
      | usertdmab49     | Android     |
      | usertdmab49     | iOS         |
      | usertdmab49     | Huawei      |



  @manual
  Esquema del escenario: validar que no se permita al usuario realizar un avance
  que supere el cupo disponible de la tarjeta de credito

    Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
    Cuando intenta realizar un avance con la tarjeta <tarjeta> por el valor de <valor>
    Entonces no se le deberia permitir realizar el avance
    Y se vereifica el mensaje de error

    Ejemplos:
      | usuario | dispositivo |tarjeta  |valor     |
      |usertdmab49   |iOs          |Personal Visa ****6671 |9000000000|
      |usertdmab49   |Android      |Personal Visa ****6671 |9999999999|
      |usertdmab49   |Huawei       |Personal Visa ****6671 |9999999999|



  @manual
  Esquema del escenario: validar que al intentar realizar un avance con un usuario sin tarjetas de credito
  habilitadas se presente el mensaje de alerta correspondiente

    Dado que <usuario> esta en la APP en el dispositivo <dispositivo>
    Cuando intenta ingresar a la funcionalidad de avance
    Entonces no se le deberia permitir ingresar a realizar el avance
    Y se vereifica el mensaje de error

    Ejemplos:
      | usuario | dispositivo      |
      |usertdmab49   |iOs          |
      |usertdmab49   |Android      |
      |usertdmab49   |Huawei       |


