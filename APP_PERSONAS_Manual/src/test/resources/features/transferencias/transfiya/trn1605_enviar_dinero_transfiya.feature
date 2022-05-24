 #language: es

 Característica: Realizar envio de dinero por transfiya
   Como usuario de bancolombia quiero enviar dinero a una cuenta ACH por medio transfiya en linea

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento CC y cuenta corriente con exoneracion a un usuario de otro banco que aprueba la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision de <comisionExoneracion>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion   |
       | usertestcore04 | Transferencia exitosa | 2500               | $200                | 3007008003    | 3003003000     | APROBADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento TI y cuenta de ahorro sin exoneracion a un usuario de otro banco que aprueba la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision estandar de <comisionEstandar>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion   |
       | usertestcore02 | Transferencia exitosa | 11499              | $100             | 3007008001    | 3003003000     | APROBADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento CC y cuenta de ahorro con exoneracion a un usuario de otro banco que aprueba la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision de <comisionExoneracion>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion   |
       | usertestcore07 | Transferencia exitosa | 33780              | 1%                  | 3007008006    | 3003003000     | APROBADO |


   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento TI y cuenta de ahorro con exoneracion a un usuario de otro banco que aprueba la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision de <comisionExoneracion>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion   |
       | usertestcore06 | Transferencia exitosa | 7435               | 0%                  | 3007008004    | 3003003000     | APROBADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento RC y cuenta corriente con exoneracion a un usuario de otro banco que aprueba la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision de <comisionExoneracion>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion   |
       | usertestcore05 | Transferencia exitosa | 32000              | 0%                  | 3007008005    | 3003003000     | APROBADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento RC y cuenta de ahorro sin exoneracion a un usuario de otro banco que aprueba la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision estandar de <comisionEstandar>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion   |
       | usertestcore03 | Transferencia exitosa | 24999              | $100             | 3007008002    | 3003003000     | APROBADO |


   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento RC y cuenta corriente sin exoneracion a un usuario de otro banco que rechaza la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision estandar de <comisionEstandar>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion    |
       | usertestcore12 | Transferencia exitosa | 210001             | $100             | 3007008011    | 3003003000     | RECHAZADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento TI y cuenta de ahorro con exoneracion a un usuario de otro banco que rechaza la transferencia
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision de <comisionExoneracion>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion    |
       | usertestcore06 | Transferencia exitosa | 85546              | 0%                  | 3007008004    | 3003003000     | RECHAZADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento TI y cuenta de ahorro sin exoneracion a un usuario de otro banco en el que no es posible aceptar la transaccion por algun error en la entidad destino
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision estandar de <comisionEstandar>
     Y el envio es <accion> por la entidad destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion    |
       | usertestcore02 | Transferencia exitosa | 10000              | $100             | 3007008001    | 3003003000     | RECHAZADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento RC y cuenta de ahorro sin exoneracion a un usuario de otro banco pero que supera el tiempo de expiracion de la transaccion
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision estandar de <comisionEstandar>
     Y el envio es <accion> por tiempo de expiracion
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion    |
       | usertestcore15 | Transferencia exitosa | 9534               | $100             | 3007008014    | 3003003000     | RECHAZADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento CC y cuenta de ahorro sin exoneracion a un usuario de otro banco, la suma del monto de la transaccion, la comision y el iva es exactamente igual al saldo que tiene el usuario origen en la cuenta
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision estandar de <comisionEstandar>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario       | resultadoEsperado     | valorTransferencia | comisionEstandar | celularOrigen | celularDestino | accion   |
       | USBB20CTACTEF | Transferencia exitosa | 8400               | $100             | 3108417272    | 3003003000     | APROBADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento CC y cuenta de ahorro con exoneracion a un usuario de otro banco, la suma del monto de la transaccion es exactamente igual al saldo que tiene el usuario origen en la cuenta
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision de <comisionExoneracion>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario  | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion    |
       | USTG20AG | Transferencia exitosa | 26384              | 0%                  | 3007110496    | 3003003000     | RECHAZADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento CC y cuenta de ahorro con exoneracion a un usuario de otro banco, la suma del monto de la transaccion es exactamente igual al saldo que tiene el usuario origen en la cuenta
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya con cobro de comision de <comisionExoneracion>
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario  | resultadoEsperado     | valorTransferencia | comisionExoneracion | celularOrigen | celularDestino | accion    |
       | USTG20AG | Transferencia exitosa | 26384              | 0%                  | 3007110496    | 3003003000     | RECHAZADO |

   @manual
   Esquema del escenario: Envio de dinero desde un usuario con tipo de documento CC y cuenta de ahorro cancelada
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el envio desde el numero <celularOrigen> al numero <celularDestino> enrolado con cuenta no bancolombia por un valor <valorTransferencia>
     Entonces deberia ver <resultadoEsperado> del envio de dinero por transfiya
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas transaction, log_transaction y monetary_affectation del CORE del servicio transfiya

     Ejemplos:
       | usuario     | resultadoEsperado                          | valorTransferencia | celularOrigen | celularDestino |
       | Transfiya79 | Transferencia Fallida por cuenta cancelada | 32554              | 3005963110    | 3003003000     |

   @manual
   Esquema del escenario: Casos de prueba asociados a Enviar Dinero
     Dado que estoy en la funcionalidad de <funcionalidad>
     Cuando deseo que <accion>
     Entonces se debe <resultadoEsperado> para el <Caso>

     Ejemplos:
       |Caso|funcionalidad|accion|resultadoEsperado|
       |1|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado con cuenta de Ahorros|Debe presentarse la pantalla para preparar el envio en la pantalla donde se solicita el valor a ingresar|
       |2|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado con cuenta Corriente|Debe presentarse la pantalla para preparar el envio en la pantalla donde se solicita el valor a ingresar|
       |3|Enviar Dinero|Ingresar monto por debajo del permitido|Verificar que se permita el monto entre 1000 y 250000|
       |4|Enviar Dinero|Ingresar monto por encima del permitido|Verificar que se permita el monto entre 1000 y 250000|
       |6|Enviar Dinero|Ingresar monto dentro del permitido|Verificar que se permita el monto entre 1000 y 250000|
       |7|Enviar Dinero|Ingresar un numero de celular de menos de 10 digitos|Validar que no se habilite el boton|
       |8|Enviar Dinero|Ingresar un numero de celular de mas de 10 digitos|Validar que no se habilite el boton|
       |9|Enviar Dinero|Ingresar un numero de celular incorrecto que no empiece por 3|Validar que no se habilite el boton|
       |10|Enviar Dinero|Ingresar un numero de celular internacional que empiece por 3|Validar que no se habilite el boton|
       |11|Enviar Dinero|Seleccionar un contacto que solo tenga correo|validar que no se muestre en el listado de Contactos|
       |12|Enviar Dinero|Seleccionar un contacto que tenga celular internacional|validar que no se muestre en el listado de Contactos|
       |13|Enviar Dinero|Seleccionar un contacto que tenga celular no valido|validar que no se muestre en el listado de Contactos|
       |14|Enviar Dinero|Verificar que se muestren los 2 campos descripcion |validar que sean editables y con maximo 25 caracteres|
       |15|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada|ver la informacion de la preparacion de transaccion|
       |17|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada|Verificar que desde la verificacion se puedan cambiar los campos Valor ProductoDestino Descripcion1 y Descripcion2|
       |18|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada|Se debe solicitar la clave dinamica|
       |19|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada|Se debe solicitar la clave dinamica|
       |20|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada superando el tope de las 5 transacciones por ACH|validar que sistema no debe permitir hacer la transaccion|
       |21|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada superando el tope de 1250000|validar que sistema no debe permitir hacer la transaccion|
       |22|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada por valor de 100000 teniendo en cuenta que el cliente ya haya superado el tope personalizado|validar que sistema no debe permitir hacer la transaccion|
       |23|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada por valor de 100000 teniendo en cuenta que el cliente ya haya superado el tope personalizado por monto|validar que sistema no debe permitir hacer la transaccion|
       |24|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada por valor de 100000 teniendo en cuenta que el cliente ya haya superado el tope canal|validar que sistema no debe permitir hacer la transaccion|
       |25|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada con un cliente que no tenga saldo con cuenta de ahorros|validar que El sistema no debe permitir hacer la transaccion debe informar SALDO INSUFICIENTE SIN SALDO|
       |26|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada con un cliente que no tenga saldo con cuenta corriente|validar que El sistema no debe permitir hacer la transaccion debe informar SALDO INSUFICIENTE SIN SALDO|
       |27|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada|Verificar que se cree el registro en el ITC con las condiciones dadas en el criterio de aceptacion|
       |28|Enviar Dinero|Hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado diligenciando la informacion solicitada|Verificar que se afecte el saldo del cliente que origina la transaccion|
       |29|Enviar Dinero|al enviar dinero Verificar que un cliente que este en lista de control permita enviar dinero debe mostrar el mensaje La solicitud fue rechazada lo invitamos acercarse a una sucursal Bancolombia para mas informacion o comunicarse con nuestra linea 510 90 00 o 018000|Permitir por que ese servicio no hace validacion de lista de control|
       |30|Enviar Dinero|al enviar dinero cuando se tiene Indisponibilidad Canal|Validar que se presente los mensajes de indisponibilidad|
       |31|Enviar Dinero|al enviar dinero cuando se tiene Indisponibilidad Core|Validar que se presente los mensajes de indisponibilidad|
       |32|Enviar Dinero|al enviar dinero cuando se tiene Indisponibilidad ACH|Validar que se presente los mensajes de indisponibilidad|
       |33|Enviar Dinero|al enviar dinero El campo Producto Destino permite ingresar caracter especial aun que No se refleja en el mismo campo; sino en la pantalla de Verifica la transferencia|tener el funcionamiento adecuado de acuerdo a la definicion|
       |34|Enviar Dinero|al enviar dinero El campo de Descripcion y Mas Informacion permite ingresar caracter especial No se refleja en el mismo campo sino en la pantalla de Verifica la transferencia Al devolverse aparece los caracteres especiales en los campos Visibles|tener el funcionamiento adecuado de acuerdo a la definicion|
       |35|Enviar Dinero|al enviar dinero El campo Ingresa una descripcion se empieza automaticamente con Mayuscula inicial mientras que en el campo Ingresa mas informacion no es automatico|tener el funcionamiento adecuado de acuerdo a la definicion|
       |36|Enviar Dinero|al enviar dinero Cuando no se consulta el costo la ventana que se despliega esta en una posicion diferentes a los PopUp Informativos Ejemplo la ventana de PIN ingresado no valido al ingresar el OTP|tener el funcionamiento adecuado de acuerdo a la definicion|
       |37|Enviar Dinero|al enviar dinero Se quiere modificar el numero de celular desde la ultima ventana de Verifica la transferencia este se toma hasta 15 segundos en volver a la ventana Verifica la Transferencia No aparece ventan de espera o en proceso como aparece cuando se cambia la descripcion|tener el funcionamiento adecuado de acuerdo a la definicion|
       |38|Enviar Dinero|al enviar dinero Si deseo modificar o cambiar un valor desde la ventana de Verifica la transferencia en este caso al dar clic en Cambiar Valor a enviar y detallo la ventana inferior de Verifica la transferencia en el campo producto destino no me aparece el titulo Numero celular como si aparece al darle cambiar a mi producto destino desde verifica la transferencia|tener el funcionamiento adecuado de acuerdo a la definicion|
       |39|Enviar Dinero|al enviar dinero Si yo por primera vez quiero hacer una transferencia por Transfiya y al momento de ir al producto destino me solicita tener acceso a mis contacto Rechazo la solicitud empiezo a digitar el numero y vuelve me aparece la ventana de permitir acceso a mis contactos la aplicacion se cierra|tener el funcionamiento adecuado de acuerdo a la definicion|
       |40|Enviar Dinero|al enviar dinero Si rechazo la solicitud de acceso a mis contacto y doy clic en el check para que no me vuelva a mostrar el mensaje puedo digitar mi numero para continuar el proceso pero si  desde la ventana de verificacion o desde descripcion me devuelvo para modificar el producto destino y se me cierra la aplicacion|tener el funcionamiento adecuado de acuerdo a la definicion|
       |41|Enviar Dinero|al enviar dinero Al momento de buscar uno de mis contactos y selecciono uno de ellos con un nombre largo inmediatamente la aplicacion genera mensaje de error y se sale de la transaccion|tener el funcionamiento adecuado de acuerdo a la definicion|
       |42|Enviar Dinero|al enviar dinero Si digito mi producto destino Celular este no me permite mas de 10 caracteres pero si voy a la ventana siguiente y me devuelvo me permte ingresar mas de 10 caracteres|tener el funcionamiento adecuado de acuerdo a la definicion|
       |43|Enviar Dinero|al enviar dinero Si tengo guardado numero de celular con indicativos +32 +92 anteponiendole el signo mas este permite listarlos en los contacto |tener el funcionamiento adecuado de acuerdo a la definicion|
       |44|Enviar Dinero|al enviar dinero Se presente el mensaje correcto el mismo codigo de error cuando un usuario no tiene saldo disponible para la transaccion y cuando la cuenta esta cancelada El mensje que se presenta es Saldo insuficiente|tener el funcionamiento adecuado de acuerdo a la definicion|
       |45|Enviar Dinero|al enviar dinero A la hora de dar tap en el boton Enviar Dinero de la pantalla de Verifica la transferencia se redirige a la ventana de ingresar clave dinamica donde el boton de enviar esta oculto solo aparece despues de interactuar con el campo de Ingresa la clave dinamica Activo o inactivo|tener el funcionamiento adecuado de acuerdo a la definicion|
       |46|Enviar Dinero|al enviar dinero y al momento de ingresar una clave dinamica invalida 000000 se genera error CUENTA ORIGEN NO VALIDA Codigo de error 090|tener el funcionamiento adecuado de acuerdo a la definicion|
       |47|Enviar Dinero|al enviar dinero Transferencia a la misma cuenta enrolada|tener el funcionamiento adecuado de acuerdo a la definicion|
       |48|Enviar Dinero|al enviar dinero Cuando se realiza un envio de dinero por TransfiYa y al ver los movimientos de la cuenta de deposito asociada como favorita en transfiya se refleja una descripcion no correcta  Traslado por cliente fallecido|tener el funcionamiento adecuado de acuerdo a la definicion|
       |49|Enviar Dinero|al enviar dinero el Costo transferencia enviar dinero diferente en la pantalla de verificacion de la transaccion a la que se muestra en la transaccion exitosa El core manifiesta el cambio del costo pero en esta consulta de la verificacion no se presenta el cambio|tener el funcionamiento adecuado de acuerdo a la definicion|
       |50|Enviar Dinero|al enviar dinero Si tengo un contacto guardado en mi celular y tiene un nombre largo este se sale de los bordes al cargarlo en la ventana de seleccion de contacto de celular al enviar el dinero|tener el funcionamiento adecuado de acuerdo a la definicion|
       |52|Enviar Dinero|al enviar dinero y al momento de realizar un envio de dinero y al final de la transaccion falla mostrando Sistema no disponible es debitado de la cuenta el valor enviado|tener el funcionamiento adecuado de acuerdo a la definicion|