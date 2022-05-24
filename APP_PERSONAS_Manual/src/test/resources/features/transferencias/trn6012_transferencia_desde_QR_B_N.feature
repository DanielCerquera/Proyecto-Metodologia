#language: es

Característica: Transferencia QR desde un cliente bancolombia a un comercio nequi
  Como usuario de bancolombia quiero realizar una transferencia QR a una cuenta bancolombia
  para realizar pagos en comercios físicos

  @manual

  Esquema del escenario: Transferencia QR desde un cliente Bancolombia a un comercio con cuenta nequi

    Dado que Yo me autentico en la app con mis credenciales <usuario>, <clave>
    Y escaneo un código QR por medio del atajo BOTON_FLOTANTE
    Cuando yo hago hago una transferencia QR de una cuenta <tipoProductoOrigen> - <productoOrigen> a una cuenta <tipoProductoDestino> - <productoDestino> por un valor de <valorTransferir>
    Entonces yo deberia visualizar <resultadoEsperado> desde <motivo>
    Y se verifica en el backend en el iseries, LOG_CANAL_COMFFLGWWW, SALDOS_SCIFFSALDO, LOG_TEFF_PCCFFLOGTF,MOV_TEF_PCCFFMOVTF, TOPES_PCCFFPPCLI, ALERTAS_ACUMULADAS_PCCFFACACL, ALERTAS_Y_NOTIFICACIONES_PCCFFLGAEN, MQI

    Ejemplos:

      | usuario     | clave | tipoProductoOrigen | productoOrigen      | tipoProductoDestino | productoDestino | valorTransferir | resultadoEsperado      | motivo                                                                                             |
      | usuarioqr01 | 1234  | Ahorros            | 40670862006         | Corriente           | 40610868001     | 1000            | Transferencia aprobada | un cliente banco con una unica cuenta desposito a un comercio banco con delegados inscritos        |
      | usuarioqr01 | 1234  | Ahorros            | 40670862006         | Ahorros             | 40670930011     | 2000            | Transferencia aprobada | un cliente con una unica cuenta desposito a un comercio sin delegados inscritos                    |
      | usuarioqr02 | 1234  | Ahorros            | 40670932009         | Ahorro              | 40670868008     | 3000            | Transferencia aprobada | un cliente con multiples cuentas desposito a un comercio sin valor por defecto                     |
      | usuarioqr02 | 1234  | Corriente          | 40610932000         | Corriente           | 40610868001     | 4000            | Transferencia aprobada | un cliente con multiples cuentas desposito a un comercio con valor por defecto                     |
      | usuarioqr02 | 1234  | Corriente          | 40610932000         | Corriente           | 40610929000     | 1000            | Transferencia aprobada | un cliente con topes del canal a un comercio con cuenta corriente                                  |
      | usuarioqr03 | 1234  | Corriente          | 40610933001         | Ahorro              | 40670868008     | 2000            | Transferencia aprobada | un cliente con topes personalizados a un comercio con cuenta de ahorros                            |
      | usuarioqr04 | 1234  | Ahorros            | 40670934007         | Ahorro              | 40670868008     | 3000            | Transferencia aprobada | un cliente sin notificaciones activas a un comercio cualquiera                                     |
      | usuarioqr04 | 1234  | Corriente          | 40610934000         | ALM                 | 40670868009     | 4000            | Transferencia aprobada | un cliente con cuenta corriente con sobregiro a un comercio con cuenta ALM                         |
      | usuarioqr04 | 1234  | Ahorros            | 40670934006         | Corriente           | 40610868001     | 1000            | Transferencia fallida  | un cliente con saldo insuficiente a un comercio cualquiera                                         |
      | usuarioqr07 | 1234  | Ahorros            | 40670872007         | Ahorro              | 40670868008     | 2000            | Transferencia fallida  | un cliente que supera el monto de topes canal a un comercio cualquiera                             |
      | usuarioqr05 | 1234  | Ahorros            | 40670930012         | Corriente           | 40610868001     | 3000            | Transferencia fallida  | un cliente que supera el numero de transferencias de topes canal a un comercio cualquiera          |
      | usuarioqr12 | 1234  | Corriente          | 40610864000         | Ahorro              | 40670868008     | 4000            | Transferencia fallida  | un cliente que supera el monto de topes personalizados a un comercio cualquiera                    |
      | usuarioqr06 | 1234  | Corriente          | 40610866000         | Corriente           | 40610868001     | 1000            | Transferencia fallida  | un cliente que supera el numero de transferencias de topes personalizados a un comercio cualquiera |
      | usuarioqr02 | 1234  | Ahorros            | 40670932009         | Ahorro              | 40670931010     | 2000            | Transferencia fallida  | un cliente banco a cliente comercio con cuenta cancelada                                           |
      | usuarioqr02 | 1234  | ALM                | 40670932010         | Corriente           | 40610868001     | 1000            | Transferencia fallida  | un cliente banco con cuenta ALM a  comercio cualquiera                                             |
      | usuarioqr02 | 1234  | Pensionado         | 40670932014         | Ahorro              | 40670868008     | 2000            | Transferencia Exitosa  | un cliente banco con cuenta pensionado a  comercio cualquiera                                      |
      | usuarioqr02 | 1234  | AFC                | 40670932012         | ALM                 | 40670868009     | 3000            | Transferencia fallida  | un cliente banco con cuenta AFC a  comercio cualquiera                                             |
      | usuarioqr02 | 1234  | TC                 | 0005303710061541980 | Corriente           | 40610929000     | 4000            | Transferencia fallida  | un cliente banco con tarjeta de credito a  comercio cualquiera                                     |