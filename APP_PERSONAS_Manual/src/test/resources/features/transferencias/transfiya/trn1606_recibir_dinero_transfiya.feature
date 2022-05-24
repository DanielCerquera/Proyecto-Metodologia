#language: es

Característica: Aceptar o rechazar una transferencia de dinero por transfiya
  Como usuario de bancolombia quiero aceptar o rechazar una transferencia de dinero que se encuentra en estado pendiente por medio de transfiya

  @manual
  Esquema del escenario: Recibir dinero enviado a un usuario con tipo de documento CC y cuenta corriente. El dinero fue enviado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> recibir el dinero enviado por el numero <celularOrigen> enrolado con cuenta no bancolombia al numero <celularDestino> por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al recibir el dinero en su cuenta Bancolombia
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | celularOrigen | celularDestino | accion |
      | usertestcore04 | Transferencia exitosa | 2500               | 3003003000    | 3007008003     | acepta |

  @manual
  Esquema del escenario: Recibir dinero enviado a un usuario con tipo de documento TI y cuenta corriente. El dinero fue enviado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> recibir el dinero enviado por el numero <celularOrigen> enrolado con cuenta no bancolombia al numero <celularDestino> por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al recibir el dinero en su cuenta Bancolombia
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | celularOrigen | celularDestino | accion |
      | usertestcore02 | Transferencia exitosa | 11499              | 3003003000    | 3007008001     | acepta |

  @manual
  Esquema del escenario: Recibir dinero enviado a un usuario con tipo de documento RC y cuenta corriente. El dinero fue enviado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> recibir el dinero enviado por el numero <celularOrigen> enrolado con cuenta no bancolombia al numero <celularDestino> por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al recibir el dinero en su cuenta Bancolombia
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | celularOrigen | celularDestino | accion |
      | usertestcore05 | Transferencia exitosa | 32000              | 3003003000    | 3007008005     | acepta |

  @manual
  Esquema del escenario: Recibir dinero enviado a un usuario con tipo de documento RC y cuenta de ahorros. El dinero fue enviado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> recibir el dinero enviado por el numero <celularOrigen> enrolado con cuenta no bancolombia al numero <celularDestino> por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al recibir el dinero en su cuenta Bancolombia
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | celularOrigen | celularDestino | accion |
      | usertestcore03 | Transferencia exitosa | 24999              | 3003003000    | 3007008002     | acepta |

  @manual
  Esquema del escenario: Rechazar dinero enviado a un usuario con tipo de documento TI y cuenta de ahorros. El dinero fue enviado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> recibir el dinero enviado por el numero <celularOrigen> enrolado con cuenta no bancolombia al numero <celularDestino> por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al recibir el dinero en su cuenta Bancolombia
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | celularOrigen | celularDestino | accion  |
      | usertestcore06 | Transferencia exitosa | 85546              | 3003003000    | 3007008004     | rechaza |

  @manual
  Esquema del escenario: Rechazar dinero enviado a un usuario con tipo de documento TI y cuenta corriente. El dinero fue enviado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> recibir el dinero enviado por el numero <celularOrigen> enrolado con cuenta no bancolombia al numero <celularDestino> por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al recibir el dinero en su cuenta Bancolombia
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario        | resultadoEsperado     | valorTransferencia | celularOrigen | celularDestino | accion  |
      | usertestcore14 | Transferencia exitosa | 57324              | 3003003000    | 3007008013     | rechaza |

  @manual
  Esquema del escenario: Recibir dinero enviado a un usuario con tipo de documento TI y cuenta ahorro cancelada. El dinero fue enviado por un usuario enrolado en otro banco
    Dado que el <usuario> selecciono la opcion TRANSFERENCIAS_PENDIENTES_TRANSFIYA
    Cuando el usuario <accion> recibir el dinero enviado por el numero <celularOrigen> enrolado con cuenta no bancolombia al numero <celularDestino> por un valor <valorTransferencia>
    Entonces deberia ver <resultadoEsperado> al recibir el dinero en su cuenta Bancolombia
    Y se verifica el archivo COMMFFLGWWW
    Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

    Ejemplos:
      | usuario     | resultadoEsperado     | valorTransferencia | celularOrigen | celularDestino | accion |
      | Transfiya79 | Transferencia Fallida | 5342               | 3003003000    | 3005963110     | acepta |


  @manual
  Esquema del escenario: Casos de prueba asociados a Recibir dinero
    Dado que estoy en la funcionalidad de <funcionalidad>
    Cuando deseo que <accion>
    Entonces se debe <resultadoEsperado> para el <Caso>

    Ejemplos:
      |Caso|funcionalidad|accion|resultadoEsperado|
      |1|Recibir Aceptar/Rechazar|Despues de enviar una transferencia ingresar a recibir dinero con un cliente que ya se encuentra enrolado|Validar que al cliente destino le muestre un mensaje de texto indicando que tiene una transferencia pendiente por recibir|
      |2|Recibir Aceptar/Rechazar|Despues de enviar una transferencia ingresar a recibir dinero con un cliente que NO se encuentra enrolado|Validar que le muestre el cliente la pantalla de enrolamiento|
      |3|Recibir Aceptar/Rechazar|Verificar que se presente la opcion|Verificar que en la opcion de transfiya se presente la opcion de Transferencias Pendientes|
      |4|Recibir Aceptar/Rechazar|Verificar que se presente la opcion|Verificar que se muestre la transferencia pendiente en Mensajes|
      |5|Recibir Aceptar/Rechazar|Verificar que se presente la opcion|Verificar que se muestre la transferencia pendiente en recibir dinero|
      |6|Recibir Aceptar/Rechazar|Verificar que un cliente no enrolado y le envian dinero por transfiya pueda ver su transaccion pendiente al enrolarse|Verificar que se muestre la transferencia pendiente luego de enrolarse|
      |7|Recibir Aceptar/Rechazar|Verificar que un cliente acepte la transaccion pendiente y se muestre en historico como Exitoso Cuenta Destino Bancolombia|Verificar que la transaccion aceptada aparezca en el historico del usuario Destino y Origen|
      |8|Recibir Aceptar/Rechazar|Verificar que un cliente rechaze la transaccion pendiente y se muestre en historico como Rechazada Cuenta Destino Bancolombia|Verificar que la transaccion rechazada aparezca en el historico del usuario Destino y Origen|
      |9|Recibir Aceptar/Rechazar|Verificar que un cliente acepte la transaccion pendiente y se muestre en historico como Exitoso Cuenta Destino Otros Bancos|Verificar que la transaccion aceptada aparezca en el historico del usuario|
      |10|Recibir Aceptar/Rechazar|Verificar que un cliente rechaze la transaccion pendiente y se muestre en historico como Rechazada Cuenta Destino Otros Bancos|Verificar que la transaccion rechazada aparezca en el historico del usuario|
      |11|Recibir Aceptar/Rechazar|Verificar que se pueden ver varias transacciones pendiente de en Aprobar Transferencias|Verificar que se listen varias transacciones pendientes|
      |12|Recibir Aceptar/Rechazar|Verificar la afectacion del Saldo al Aceptar transfrencia desde el mismo banco|verificar que el saldo de la cuenta de depositos enrolada sea afecta y se refleje en el movimiento|
      |13|Recibir Aceptar/Rechazar|Verificar la afectacion del Saldo al Aceptar transferencia desde otro banco|verificar que el saldo de la cuenta de depositos enrolada sea afecta y se refleje en el movimiento|
      |14|Recibir Aceptar/Rechazar|Verificar la no afectacion del Saldo al Rechazar la transferencia desde el mismo banco|verificar que el saldo de la cuenta de depositos enrolada No sea afecta y No se refleje en el movimiento|
      |15|Recibir Aceptar/Rechazar|Verificar la afectacion del Saldo al Rechazar la transferencia desde otro banco|verificar que el saldo de la cuenta de depositos enrolada No sea afecta y No se refleje en el movimiento|
      |16|Recibir Aceptar/Rechazar|Verificar la transferencia pendiente Aceptar que fue enviado desde un celular que ya no esta enrolado|verificar que el saldo de la cuenta de deposito destino sea afecfado y reflejado en el movimiento|
      |17|Recibir Aceptar/Rechazar|Verificar la transferencia pendiente Rechazarla que fue enviado desde un celular que ya no esta enrolado|verificar que la cuenta origen le sea reintegrado la transferencia realizada|
      |18|Recibir Aceptar/Rechazar|verificar el estado de los botones de Aceptar y Rechazar al no tener transferencias pendientes|verificar que los botones de Rechazar y Aceptar esten desactivados|
      |19|Recibir Aceptar/Rechazar|Verificar que al Rechazar la transferencia pendiente el valor rechazado se devuelva a la cuenta origen Bancolombia|verificar que El saldo rechazado debe sumarse a la cuenta origen |
      |20|Recibir Aceptar/Rechazar|Verifica que al aceptar la transferencia pendiente no se vuelva a debitar de la cuenta origen Bancolombia|Verificar que no se debite dos veces|
      |21|Recibir Aceptar/Rechazar|Verificar que una vez se selecciona la transferencia que se quiere recibir se debe mostrar los campos de la transferencia quien envia el dinero el valor y las 2 descripciones Pantalla de Verificacion|presentar el Resultado Pantalla de verificacion|
      |22|Recibir Aceptar/Rechazar|Verificar en la pantalla de Verificacion que se presenten los botones de Recibir o Rechazar|tener el funcionamiento adecuado de acuerdo a la definicion|
      |23|Recibir Aceptar/Rechazar|Verificar que si se presiona el boton de recibir se realice el abono a la cuenta seleccionada y se muestre la pantalla de confirmacion|tener el funcionamiento adecuado de acuerdo a la definicion|
      |24|Recibir Aceptar/Rechazar|Verificar que si se presiona el boton de rechazar se decline la transferencia con una cuenta de ahorros enrolada|tener el funcionamiento adecuado de acuerdo a la definicion|
      |25|Recibir Aceptar/Rechazar|Verificar que si se presiona el boton de rechazar se decline la transferencia con una cuenta corriente enrolada|tener el funcionamiento adecuado de acuerdo a la definicion|
      |26|Recibir Aceptar/Rechazar|Validar que en la pantalla de confirmacion se presenten los atajos correspondientes|tener el funcionamiento adecuado de acuerdo a la definicion|
      |27|Recibir Aceptar/Rechazar|Al aceptar y rechazar cuando se tiene Indisponibilidad Canal|Validar que se presente los mensajes de indisponibilidad|
      |28|Recibir Aceptar/Rechazar|Al aceptar y rechazar cuando se tiene Indisponibilidad Core|Validar que se presente los mensajes de indisponibilidad|
      |29|Recibir Aceptar/Rechazar|Al aceptar y rechazar cuando se tiene Indisponibilidad ACH|Validar que se presente los mensajes de indisponibilidad|
      |30|Recibir Aceptar/Rechazar|Al aceptar y rechazar Verificar que un cliente que este en lista de control deje recibir dinero|Permitir la recepcion de dinero exitosamente|
      |31|Recibir Aceptar/Rechazar|Al aceptar y rechazar Recibir dinero enviado desde una cuenta no Bancolombia Orientado al exito|Permitir la recepcion de dinero exitosamente|
      |32|Recibir Aceptar/Rechazar|Al aceptar y rechazar Recibir dinero en una cuenta de ahorros enviado desde una cuenta de bancolombia Orientado al exito|Permitir la recepcion de dinero exitosamente|
      |33|Recibir Aceptar/Rechazar|Al aceptar y rechazar Recibir dinero en una cuenta corriente enviado desde una cuenta de bancolombia Orientado al exito|Permitir la recepcion de dinero exitosamente|
      |34|Recibir Aceptar/Rechazar|Al aceptar y rechazar Rechazar dinero enviado desde una cuenta no Bancolombia Alterno orientado al exito|recharzar la Solicitud no se acepta el dinero|
      |35|Recibir Aceptar/Rechazar|Al aceptar y rechazar Rechazo por superar el tiempo limite permitido para recibir dinero Cuenta origen Ahorro Orientado al fallo|realizar el reverso de la transaccion|
      |36|Recibir Aceptar/Rechazar|Al aceptar y rechazar Rechazo por superar el tiempo limite permitido para recibir dinero Cuenta origen Corriente Orientado al fallo|realizar el reverso de la transaccion|
      |37|Recibir Aceptar/Rechazar|Al aceptar y rechazar Recibir dinero en una cuenta depositos inactiva Ahorro|Permitir la recepcion de dinero exitosamente|
      |38|Recibir Aceptar/Rechazar|Al aceptar y rechazar Recibir dinero en una cuenta depositos de cancelada Orientado al fallo|validar que No se permite recibir el dinero se rechaza automaticamente|
      |39|Recibir Aceptar/Rechazar|Al aceptar y rechazar Recibir con un usuario registrado en las listas de control Orientado al exito|Permitir la recepcion de dinero exitosamente|
      |40|Recibir Aceptar/Rechazar|Al aceptar y rechazar El sistema permite ver las transacciones pendientes por aprobar si yo enrolo mi celular en otra cuenta que no es del mismo usuario Permitiendo tambien aceptar la transaccion|tener el funcionamiento adecuado de acuerdo a la definicion|
      |41|Recibir Aceptar/Rechazar|Al aceptar y rechazar y al digitar un valor numerico de la cantidad de caracteres permitidos en descripcion e informacion adicional se ver de manera diferente en la confirmacion de la transferencia aceptada de recibir dinero|tener el funcionamiento adecuado de acuerdo a la definicion|
      |42|Recibir Aceptar/Rechazar|Al aceptar y rechazar En la ventana de confirmacion de la Aceptacion de Recibir Dinero se muestra en le producto Origen el Numero de Celular del destino y no de quien mando el dinero|tener el funcionamiento adecuado de acuerdo a la definicion|
      |43|Recibir Aceptar/Rechazar|Al aceptar y rechazar En la funcionalidad de transferencias pendientes transfiya al cambiar entre pestanas Aprobar transferencia y aprobar solicitud se nota un comportamiento en el texto de Aprobar transferencia donde al tenerlo selecionado salta de linea|tener el funcionamiento adecuado de acuerdo a la definicion|
      |44|Recibir Aceptar/Rechazar|Al momento de Aceptar una solicitud y quiero dar clie en el boton de Aceptar otra transferencia inmediatamente te lista las pendientes mas la que acabas de aceptar llevando a realizar otra vez la aceptacion de la previamente aceptada causando error 500 al usuario Esto es porque el Core se esta validando que ya fue aceptada o esta en proceso de aceptacion|tener el funcionamiento adecuado de acuerdo a la definicion|
      |45|Recibir Aceptar/Rechazar|Al aceptar y rechazar Recibir dinero se esta mostrando un numero de comprobante diferente al enviado por el banco|tener el funcionamiento adecuado de acuerdo a la definicion|
      |46|Recibir Aceptar/Rechazar|Al momento de rechazar Recibir dinero se esta no se esta reflejando el movimiento rechazado que se acaba de hacer|tener el funcionamiento adecuado de acuerdo a la definicion|
      |47|Recibir Aceptar/Rechazar|Al momento de aceptar una solicitud de dinero pero de una cuenta sin saldo o que haya superado el limite de transferencias por dia este genera el mensaje de correspondiente a la funcion y si damos clic en el boton Regresar nos lleva a la venta de las transacciones pendientes y solicitudes pendientes pero no se muestra el mensaje de que no tiene transacciones ptes o solicitudes ptes|tener el funcionamiento adecuado de acuerdo a la definicion|
      |48|Recibir Aceptar/Rechazar|Al momento de aceptar una solicitud de dinero con una cuenta sin saldo se muestra en movimientos de la cuenta el descuento del IVA|tener el funcionamiento adecuado de acuerdo a la definicion|
      |49|Recibir Aceptar/Rechazar|Al momento de aceptar una solicitud de dinero pero este no tiene saldo en su cuenta enrolada Te devuelve hasta la pantalla de mensaje Deberia devolver al flujo anterior es decir Transacciones Pendientes|tener el funcionamiento adecuado de acuerdo a la definicion|
      |50|Recibir Aceptar/Rechazar|Al Rechazar un dinero me sale el mensaje en la confirmacion de En pocos minutos revisa el historico de tranfiya para verificar que la transferencia fue recibida con exito|tener el funcionamiento adecuado de acuerdo a la definicion|

