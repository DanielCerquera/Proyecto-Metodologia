#language: es

Característica:  Historico de movimientos en transfiya
  Como usuario de bancolombia quiero ver mis movimientos pendientes aceptados y rechazados realizados por transfiya.

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

  Esquema del escenario: Casos de prueba asociados a Historico Movimientos
    Dado que estoy en la funcionalidad de <funcionalidad>
    Cuando deseo que <accion>
    Entonces se debe <resultadoEsperado> para el <Caso>
    
    Ejemplos:
      |Caso|funcionalidad|accion|resultadoEsperado|
      |1|Historico Movimientos|Luego de hacer un envio de dinero Envio de Dinero por transfiya validar que haya llegado el movimiento en historico como estado Pendiente|registrar la transaccion realizada de envio de dinero con el estado Pendiente y los demas campos Fecha Valor Evento y Originador|
      |2|Historico Movimientos|Luego de hacer un envio de dinero Envio de Dinero por transfiya validar que haya llegado el movimiento en historico como estado Rechazado|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |3|Historico Movimientos|Luego de hacer un envio de dinero Envio de Dinero por transfiya validar que haya llegado el movimiento en historico como estado Exitoso|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |4|Historico Movimientos|Luego de recibir un dinero Dinero Recibido por transfiya validar que haya llegado el movimiento en historico como estado Exitoso|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |5|Historico Movimientos|Luego de recibir un dinero Dinero Recibido por transfiya validar que haya llegado el movimiento en historico como estado Rechazado|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |6|Historico Movimientos|Luego de recibir un dinero Dinero Recibido por transfiya validar que haya llegado el movimiento en historico como estado Pendiente|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |7|Historico Movimientos|Luego de hacer una solicitud de dinero Solicitud de Dinero por transfiya validar que me haya quedado en historico con estado Exitoso|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |8|Historico Movimientos|Luego de hacer una solicitud de dinero Solicitud de Dinero por transfiya validar que me haya quedado en historico con estado Rechazado|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |9|Historico Movimientos|Luego de hacer una solicitud de dinero Solicitud de Dinero por transfiya validar que me haya quedado en historico con estado Pendiente|registrar la transaccion realizada de envio de dinero con el estado Rechazado y los demas campos Fecha Valor Evento y Originador|
      |10|Historico Movimientos|Validar que los debitos presenten el signo negativo-|El valor debe presentarse de color Rojo y con el signo menos - antepuesto al valor|
      |11|Historico Movimientos|Validar que los creditos presenten signo positvo|El valor debe presentarse de color Verde y positivo|
      |12|Historico Movimientos|Validar que los estados pendientes presenten signo positivo|El valor debe presentarse de color Negro y sin signo|
      |13|Historico Movimientos|Validar que las transacciones de Dinero enviado se muestren muestren los siguientes campos Estado Fecha Valor Evento Destino|Validar la correcta descripcion y formato de los Campos Estado Fecha Valor Evento y Destinatario|
      |14|Historico Movimientos|Validar que las transacciones de Dinero Solicitado se muestren muestren los siguientes campos Estado Fecha Valor Evento Origen|Validar la correcta descripcion y formato de los Campos Estado Fecha Valor Evento y Originador|
      |15|Historico Movimientos|Validar que las transacciones de Solicitud de Dinero se muestren muestren los siguientes campos Estado Fecha Valor Evento Origen|Validar la correcta descripcion y formato de los Campos Estado Fecha Valor Evento y Originador|
      |16|Historico Movimientos|Validar que las transacciones de Dinero Recibido se muestren muestren los siguientes campos Estado Fecha Valor Evento Origen|Validar la correcta descripcion y formato de los Campos Estado Fecha Valor Evento y Originador|
      |17|Historico Movimientos|Validar que se presenten los tres campos eb la busqueda Estado Valor y Rango de Fecha|Campos presentes Estado Valor y Rango de Fecha|
      |18|Historico Movimientos|Validar que no se permita ingresar otro valor en el campo de busqueda nombrado Estado|desplegar tres estado Aprobado Exitoso y Pendiente|
      |19|Historico Movimientos|Validar que no se permita valores negativos en el campo de busqueda nombrado Valor de la transaccion|permitir caracteres especiales ni alfanumericos en el campo|
      |20|Historico Movimientos|Validar que no se permita digitar la fecha en el campo de rago de fecha|validar que la fecha solo debe ser seleccionada|
      |21|Historico Movimientos|Validar que no se permita seleccionar fechas mayor a la actual|validar los dias mayores a la fecha actual deben estar desactivos|
      |22|Historico Movimientos|Validar el mensaje que se despliega si no tienen busqueda exitoso|validar El popup debe estar en la parte super informando que no se arrojo resultados en la busqueda|
      |23|Historico Movimientos|Validar los campos que aparecen en Detalle de Dinero Enviado|validar que se prensente el titulo correcto de la transaccion detalle de la transaccion con el producto origen el costo de la transaccion producto destino valor enviado recibido o solicitado y las dos descripciones el detalle del envio si fue exitoso rechazado o pendiente numero de comprobante fecha y hora Parte de abajo de el detalle tener un atajo de compartir|
      |24|Historico Movimientos|Validar los campos que aparecen en Detalle de Dinero Recibido|Debe presentar el titulo correcto de la transaccion detalle de la transaccion con el producto origen el costo de la transaccion producto destino valor enviado recibido o solicitado y las dos descripciones el detalle del envio si fue exitoso rechazado o pendiente numero de comprobante fecha y hora Parte de abajo de el detalle tener un atajo de compartir|
      |25|Historico Movimientos|Validar los campos que aparecen en Detalle de Solicitud de Dinero|Debe presentar el titulo correcto de la transaccion detalle de la transaccion con el producto origen el costo de la transaccion producto destino valor enviado recibido o solicitado y las dos descripciones el detalle del envio si fue exitoso rechazado o pendiente numero de comprobante fecha y hora Parte de abajo de el detalle tener un atajo de compartir|
      |26|Historico Movimientos|Validar los campos que aparecen en Detalle de Dinero Solicitado|Debe presentar el titulo correcto de la transaccion detalle de la transaccion con el producto origen el costo de la transaccion producto destino valor enviado recibido o solicitado y las dos descripciones el detalle del envio si fue exitoso rechazado o pendiente numero de comprobante fecha y hora Parte de abajo de el detalle tener un atajo de compartir|
      |27|Historico Movimientos|Validar el boton de compartir dinero|El boton debe aparecer en la parte inferior del detalle|
      |28|Historico Movimientos|Validar el formato de detalle compartido|Formato legible y con los campos |
      |29|Historico Movimientos|cuando se tiene Indisponibilidad Canal|Validar que se presente los mensajes de indisponibilidad|
      |30|Historico Movimientos|cuando se tiene Indisponibilidad Core|Validar que se presente los mensajes de indisponibilidad|
      |31|Historico Movimientos|cuando se tiene Indisponibilidad ACH|Validar que se presente los mensajes de indisponibilidad|
      |32|Historico Movimientos|Cuando se ingresa a Historico y se desea ver el detalle de una de las transacciones que no tenga descripcion se observa que la flecha del detalle del envio esta en una posicion no adecuada|tener el funcionamiento adecuado de acuerdo a la definicion|
      |33|Historico Movimientos|Cuando se ingresa a Historico y se desea ver el detalle de una de las transacciones que no tenga descripcion se observa que la fecha superior no tiene funcionalidad|tener el funcionamiento adecuado de acuerdo a la definicion|
      |34|Historico Movimientos|cuando se activa el boton Buscar cuando se da clic en la X del campo ingresar valor de transaccion al igual que seleccionar otros componentes y se deja vacio|tener el funcionamiento adecuado de acuerdo a la definicion|
      |35|Historico Movimientos|En la lista de los movimientos y en su estado Pendiente Enviar Dinero presentan el signo - negativo el valor|tener el funcionamiento adecuado de acuerdo a la definicion|
      |36|Historico Movimientos|Se permitir ver los movimientos de transfiya si otra persona ya utiliza el que fue mi numero de celular|tener el funcionamiento adecuado de acuerdo a la definicion|
      |37|Historico Movimientos|Validar si la flecha de movimientos debe mostrarse de ese color gris mas oscuro al darle clic|tener el funcionamiento adecuado de acuerdo a la definicion|
      |38|Historico Movimientos|Cuando el usuario se loguea y esta enrolado queriendo ver el historico de sus movimiento por primera vez inmediatamente sale mensaje de error 500 Ya al intentarlo por segunda vez este lo deja ingresar|tener el funcionamiento adecuado de acuerdo a la definicion|
      |39|Historico Movimientos|Al momento de dar clic en la X del campo Ingresa Valor de la opcion de Busqueda se activa el Label de Limpiar Campos sin tener nada diligenciado para buscar|tener el funcionamiento adecuado de acuerdo a la definicion|
      |40|Historico Movimientos|Al momento de ingresar al detalle de cada uno de los movimientos se refleja que el valor enviado aparece con signo negativo En el prototipo no aparece con signo negativo en el detalle|tener el funcionamiento adecuado de acuerdo a la definicion|
      |41|Historico Movimientos|Al enrolar un usuario desde la opcion de Administracion transfiya y luego vas a la opcion de historico se genera error 400|tener el funcionamiento adecuado de acuerdo a la definicion|
      |42|Historico Movimientos|Al revisar el detalle del movimiento este refleja una hora en la cual no se hizo la transferencia Esta transferencia se hizo en horas de la manana|tener el funcionamiento adecuado de acuerdo a la definicion|
      |43|Historico Movimientos|Al enviar dinero aceptar o rechazar transferencia se genera un numero de comprobante el cual queda en todas las transacciones que esten en el historico es el mismo comprobante para toda transaccion hecha con ese usuario|tener el funcionamiento adecuado de acuerdo a la definicion|
      |44|Historico Movimientos|En el detalle de todas las transacciones que ha hecho el usuario se esta reflejando que todas tienen la misma hora 5 am|tener el funcionamiento adecuado de acuerdo a la definicion|
