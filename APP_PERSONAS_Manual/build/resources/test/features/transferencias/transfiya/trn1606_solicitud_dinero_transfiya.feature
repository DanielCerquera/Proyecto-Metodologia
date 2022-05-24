#language: es

Característica:  Aceptar o rechazar una solicitud de envio de dinero por transfiya
  Como usuario de bancolombia quiero aceptar o rechazar una solicitud de envío de dinero que se encuentra en estado pendiente por medio de transfiya

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento TI y cuenta corriente con exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision de <comisionExoneracion>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion |
      | usertestcore08 | Transferencia exitosa | 12540              | $200                | 3007008007    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento TI y cuenta corriente sin exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion |
      | usertestcore02 | Transferencia exitosa | 11499              | 0.5%             | 3007008001    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento TI y cuenta de ahorro con exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision de <comisionExoneracion>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion |
      | usertestcore11 | Transferencia exitosa | 15480              | 1%                  | 3007008010    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento CC y cuenta corriente con exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision de <comisionExoneracion>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion |
      | usertestcore10 | Transferencia exitosa | 25500              | $0                  | 3007008009    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento RC y cuenta de ahorros con exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision de <comisionExoneracion>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion |
      | usertestcore09 | Transferencia exitosa | 32570              | 0%                  | 3007008008    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento RC y cuenta de ahorros sin exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion |
      | usertestcore03 | Transferencia exitosa | 24999              | 0.5%             | 3007008002    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Rechazar envio de dinero desde usuario con tipo de documento RC y cuenta corriente sin exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion  |
      | usertestcore12 | Transferencia exitosa | 210001             | 0.5%             | 3007008002    | 3003003000     | rechaza |

  @manual
  Esquema del escenario: Rechazar envio de dinero desde usuario con tipo de documento RC y cuenta de ahorros con exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision de <comisionExoneracion>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion  |
      | usertestcore09 | Transferencia exitosa | 56320              | 0%                  | 3007008008    | 3003003000     | rechaza |

  @manual
  Esquema del escenario: Aceptar envio de dinero desde usuario con tipo de documento TI y cuenta corriente sin exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco y no es posible recibir el dinero por partes de la otra entidad
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion |
      | usertestcore02 | Transferencia fallida | 10000              | 0.5%             | 3007008001    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento CC y cuenta ahorro sin exoneracion. El saldo en la cuenta es exactamente igual a la suma del monto, la comision y el iva. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario      | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion |
      | TRANSFIYAC04 | Transferencia exitosa | 100000             | 0.5%             | 3226360004    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aprobar envio de dinero desde usuario con tipo de documento CC y cuenta corriente con exoneracion. El saldo en la cuenta es exactamente igual al monto. El dinero fue solicitado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision de <comisionExoneracion>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario  | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion |
      | USTG20AH | Transferencia exitosa | 84343              | 0%                  | 3113041963    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aceptar envio de dinero desde usuario con tipo de documento CC y cuenta de ahorros cancelada sin exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco y no es posible recibir el dinero por partes de la otra entidad
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario     | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion |
      | Transfiya79 | Transferencia fallida | 5342               | 0.5%             | 3005963110    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aceptar envio de dinero desde usuario con tipo de documento TI y cuenta corriente sin exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco y el monto es inferior al permitido para el producto
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion |
      | usertestcore02 | Transferencia fallida | 999                | 0.5%             | 3007008001    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Aceptar envio de dinero desde usuario con tipo de documento RC y cuenta de ahorro sin exoneracion. El dinero fue solicitado por un usuario enrolado en otro banco y el monto es superior al permitido para el producto
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> enviar el dinero desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al enviar el dinero desde su cuenta Bancolombia con cobro de comision estandar de <comisionEstandar>
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion |
      | usertestcore03 | Transferencia fallida | 260000             | 0.5%             | 3007008002    | 3003003000     | acepta |

  @manual
  Esquema del escenario: Casos de prueba asociados a Aceptar solicitud
    Dado que estoy en la funcionalidad de <funcionalidad>
    Cuando deseo que <accion>
    Entonces se debe <resultadoEsperado> para el <Caso>

    Ejemplos:
      |Caso|funcionalidad|accion|resultadoEsperado|
      |1|Solicitar Aceptar/Rechazar|cuando se tiene Indisponibilidad Canal|Validar que se presente los mensajes de indisponibilidad|
      |2|Solicitar Aceptar/Rechazar|cuando se tiene Indisponibilidad Core|Validar que se presente los mensajes de indisponibilidad|
      |3|Solicitar Aceptar/Rechazar|cuando se tiene Indisponibilidad ACH|Validar que se presente los mensajes de indisponibilidad|
      |4|Solicitar Aceptar/Rechazar|Verificar movimientos en el historico para solicitudes aceptadas|Validar que en el detalle del historico quede toda la informacion correcta del movimiento Comprobante monto de la transaccion estado de la transaccion Origen Destino Fecha y hora Descripcion y Mas informacion si aplica y el costo de la transaccion|
      |5|Solicitar Aceptar/Rechazar|Verificar movimientos en el historico para solicitudes rechazadas|Validar que en el detalle del historico quede toda la informacion correcta del movimiento Comprobante monto de la transaccion estado de la transaccion Origen Destino Fecha y hora Descripcion y Mas informacion si aplica y el costo de la transaccion|
      |6|Solicitar Aceptar/Rechazar|Aprobar una solicitud de dinero desde una cuenta de ahorros |Aprobacion exitosa Informacion correcta en la pantalla del comprobante se debe de ver el debito de la cuenta|
      |7|Solicitar Aceptar/Rechazar|Rechazar una solicitud de dinero desde una cuenta de ahorros |Rechazo exitoso Informacion correcta en la pantalla del comprobante no se debe presentar el debito de la cuenta y reflejar el movimiento en historico|
      |8|Solicitar Aceptar/Rechazar|Aprobar una solicitud de dinero desde una cuenta corriente|Aprobacion exitosa Informacion correcta en la pantalla del comprobante se debe de ver el debito de la cuenta y reflejar el movimiento en historico|
      |9|Solicitar Aceptar/Rechazar|Rechazar una solicitud de dinero desde una cuenta corriente|Rechazo exitoso Informacion correcta en la pantalla del comprobante no se debe presentar el debito de la cuenta y reflejar el movimiento en historico|
      |10|Solicitar Aceptar/Rechazar|Aprobar una solicitud desde una cuenta depositos cancelada|Debe presentar el mensaje de cuenta cancelada y no debe permitir el debito|
      |11|Solicitar Aceptar/Rechazar|Aprobar una solicitud desde una cuenta depositos sin saldo|Debe presentar el mensaje de cuenta sin saldo y no debe permitir el debito|
      |12|Solicitar Aceptar/Rechazar|Aceptar mas de 5 solicitudes de dinero|Debe mostrar el mensaje de has superado el tope de transfiya|
      |13|Solicitar Aceptar/Rechazar|Aprobar una solicitud desde una cuenta depositos inactiva Ahorro|Debe dejar realizar el deposito|
      |14|Solicitar Aceptar/Rechazar|Al momento de aceptar una solicitud de dinero en la pantalla de Solicitud Aceptada se nota que no se esta mostrando el numero de celular origen y el valor de la transferencia esta quedando en cero|tener el funcionamiento adecuado de acuerdo a la definicion|
      |15|Solicitar Aceptar/Rechazar|Al aceptar solicitudes esta permitiendo aceptar o rechazar mas de 5 peticiones lo cual es erroneo ya que se tiene parametrizado que sean solo cinco exactas|tener el funcionamiento adecuado de acuerdo a la definicion|