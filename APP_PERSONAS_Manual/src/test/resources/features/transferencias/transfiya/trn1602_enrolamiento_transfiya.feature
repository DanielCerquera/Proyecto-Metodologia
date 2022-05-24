 #language: es

 Característica: Enrolamiento de cliente en Tranfiya
   Como usuario de bancolombia quiero enrolarme en el sistema para hacer una transferencia ACH en linea

   @manual
   Esquema del escenario: Enrolamiento exitoso para cliente no enrolado con tipo de documento TI y cuenta de ahorros
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el enrolamiento usando numero celular <numeroCelular> y numero de cuenta <tipoCuenta> <numeroCuenta>
     Entonces deberia ver <resultadoEsperado> en el enrolamiento al servicio transfiya
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas enrollment y log_enrollment del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado    | numeroCelular | tipoCuenta | numeroCuenta |
       | usertestcore06 | Enrolamiento exitoso | 3007008004    | de ahorros | 40678489020  |


   @manual
   Esquema del escenario: Enrolamiento exitoso para cliente no enrolado con tipo de documento RC y cuenta corriente
     Dado que el <usuario> selecciono la opcion TRANSFERIR_DINERO_CON_TRANSFIYA
     Cuando el usuario realiza el enrolamiento usando numero celular <numeroCelular> y numero de cuenta <tipoCuenta> <numeroCuenta>
     Entonces deberia ver <resultadoEsperado> en el enrolamiento al servicio transfiya
     Y el envio es <accion> por el usuario destino
     Y se verifica el archivo COMMFFLGWWW
     Y se verifica en las tablas enrollment y log_enrollment del CORE del servicio transfiya

     Ejemplos:
       | usuario        | resultadoEsperado    | numeroCelular | tipoCuenta | numeroCuenta |
       | usertestcore12 | Enrolamiento exitoso | 3007008011    | corriente  | 40618635002  |

   @manual
   Esquema del escenario: Casos de prueba asociados a Enrolamiento
     Dado que estoy en la funcionalidad de <funcionalidad>
     Cuando deseo que <accion>
     Entonces se debe <resultadoEsperado> para el <Caso>

     Ejemplos:
       |Caso|funcionalidad|accion|resultadoEsperado|
       |1|Enrolamiento|al hacer una transaccion de envio de dinero con un cliente que ya se encuentra enrolado|presentarse la pantalla para preparar el envio|
       |2|Enrolamiento|al hacer una transaccion de envio de dinero con un cliente que no se encuentra enrolado con cuenta de Ahorros|presentarse la pantalla para preparar el enrolamiento on bourding y se realice el enrolamiento|
       |3|Enrolamiento|al hacer una transaccion de envio de dinero con un cliente que tenga el enrolamiento previo anulado|presentarse la pantalla para preparar el enrolamiento on bourding y se realice el enrolamiento|
       |4|Enrolamiento|al hacer una transaccion de recibir dinero con un cliente que se encuentra enrolado|presentarse la pantalla para preparar el envio|
       |5|Enrolamiento|al hacer una transaccion de recibir dinero con un cliente que ya se encuentra enrolado con cuenta Corriente|presentarse la pantalla para preparar el enrolamiento on bourding y se realice el enrolamiento|
       |6|Enrolamiento|al hacer una transaccion de recibir de dinero con un cliente que tenga el enrolamiento previo anulado|presentarse la pantalla para preparar el enrolamiento on bourding y se realice el enrolamiento|
       |7|Enrolamiento|En proceso de enrolamiento|Verificar que solo se muestren las cuentas ahorro y corriente en estado A e I|
       |9|Enrolamiento|En proceso de enrolamiento|Verificar que no se muestren las cuentas ahorro y corriente en estado L - M - S|
       |10|Enrolamiento|En proceso de enrolamiento|Verifica que si solo tiene una cuenta esta se precarge|
       |11|Enrolamiento|En proceso de enrolamiento|Verificar que despues de enrolarse lo lleve a la ventana de enviar dinero|
       |12|Enrolamiento|En proceso de enrolamiento|Verificar que un cliente que este en lista de control no lo deje enrolar debe mostrar el mensaje No es posible realizar la operacion Cod 032|
       |13|Enrolamiento|En proceso de enrolamiento|Verificar que se presente terminos y condiciones|
       |14|Enrolamiento|al Enrolar ingresando un codigo OTP vencido|Validar que no se habilite el boton|
       |15|Enrolamiento|al Enrolar ingresando un codigo OTP ya utilizado|Validar que no se habilite el boton|
       |16|Enrolamiento|al Enrolar ingresando un codigo OTP 000000|Validar que no se habilite el boton|
       |17|Enrolamiento|al Solicitar un nuevo OTP|Validar que no se habilite el boton|
       |18|Enrolamiento|al Ingresar un numero de celular de menos de 10 digitos|Validar que no se habilite el boton|
       |19|Enrolamiento|al Ingresar un numero de celular de mas de 10 digitos|Validar que no se habilite el boton|
       |20|Enrolamiento|al Ingresar un numero de celular incorrecto que no empiece por 3|Validar que no se habilite el boton|
       |21|Enrolamiento|al Ingresar un numero de celular internacional que empiece por 3|Validar que no se habilite el boton|
       |22|Enrolamiento|al No seleccionar terminos y condiciones|Validar que no se habilite el boton|
       |23|Enrolamiento|al realizar un enrolamiento cuando se tiene Indisponibilidad Canal|Validar que se presente los mensajes de indisponibilidad|
       |24|Enrolamiento|al realizar un enrolamiento cuando se tiene Indisponibilidad Core|Validar que se presente los mensajes de indisponibilidad|
       |25|Enrolamiento|al realizar un enrolamiento cuando se tiene Indisponibilidad ACH|Validar que se presente los mensajes de indisponibilidad|
       |26|Enrolamiento|al Hacer un enrolamiento con tipo de documento 0 Carnet Diplomatico|mostrar mensaje Este servicio no esta habilitado para el tipo de documento Pronto estara disponible para ti Codigo de error 036|
       |27|Enrolamiento|al Hacer un enrolamiento con tipo de documento 1 Cedula|permitir el enrolamiento a transfiya de manera satisfactoria|
       |28|Enrolamiento|al Hacer un enrolamiento con tipo de documento 2 Cedula Extranjeria|mostrar mensaje Este servicio no esta habilitado para el tipo de documento Pronto estara disponible para ti Codigo de error 036|
       |29|Enrolamiento|al Hacer un enrolamiento con tipo de documento 3 Nit|mostrar mensaje Este servicio no esta habilitado para el tipo de documento Pronto estara disponible para ti Codigo de error 036|
       |30|Enrolamiento|al Hacer un enrolamiento con tipo de documento 4 Tarjeta de Identidad|permitir el enrolamiento a transfiya de manera satisfactoria|
       |31|Enrolamiento|al Hacer un enrolamiento con tipo de documento 5 Pasaporte|mostrar mensaje Este servicio no esta habilitado para el tipo de documento Pronto estara disponible para ti Codigo de error 036|
       |32|Enrolamiento|al Hacer un enrolamiento con tipo de documento 6 Id Extranjero PN|mostrar mensaje Este servicio no esta habilitado para el tipo de documento Pronto estara disponible para tiCodigo de error 036|
       |33|Enrolamiento|al Hacer un enrolamiento con tipo de documento 9 Registro Civil|permitir el enrolamiento a transfiya de manera satisfactoria|
       |34|Enrolamiento|al Hacer un enrolamiento con clientes que tengan documento original y externo diferente Tipo Doc 5|permitir el enrolamiento a transfiya de manera satisfactoria - Por este Release no se permitira el enrolamiento con este tipo de documento|
       |35|Enrolamiento|al Hacer un enrolamiento con clientes que tengan documento original y externo diferente Tipo Doc 6|permitir el enrolamiento a transfiya de manera satisfactoria - Por este Release no se permitira el enrolamiento con este tipo de documento|
       |36|Enrolamiento|al Hacer un enrolamiento sin Saldo|Permitir el enrolamiento|
       |37|Enrolamiento|al En proceso de enrolamiento|Verificar que no se muestren las cuentas ALM|
       |38|Enrolamiento|al momento de seleccionar una cuenta de deposito para el enrolamiento a TransfiYa se ve que el boton de cancelar esta inactivo y solo se activa cuando se da clic en el Check de tratamiento de datos Este boton no debe ser dependiente de la aprobacion de tratamiento de datos para cancelar el proceso|ser dependiente de la aprobacion de tratamiento de datos para cancelar el proceso|
       |39|Enrolamiento|al realizar un enrolamiento siempre queda registrada y guardada la primera cuenta de la lista independientemente la que haya seleccionado|quedar enrolado con la cuenta seleccionada|
       |40|Enrolamiento|al realizar un enrolmaniento Permite activar el dictado de voz en el campo telefono dejando ingresar un telefono no valido y de mayor tamano a los 10 digitos si validarlo|dejar ingresar maximo 10 digitos|
       |41|Enrolamiento|al realizar un enrolamiento Los errores presenta el boton de Intentalo mas tarde en la parte media de la pantalla Siguiendo los demas errores o mensajes son en la parte inferior de la misma|mostrar el mensaje en la ubicacion indicada|
       |42|Enrolamiento|al tener un usuario con una sola cuenta de deposito en la ventana donde debe seleccionar la cuenta esta no esta seleccionada de manera predeterminada debe seleccionarse|seleccionar la cuenta esta no esta seleccionada de manera predeterminada debe seleccionarse|
       |43|Enrolamiento|al realizar un enrolamiento presenta un comportamiento extrano en la ventana de ingreso de numero de celular al momento de digitar el numero de telefono y deslizo la pantalla hacia arriba este se sale del marco no dejando visualizar de manera correcta la pantalla|presentar la pantalla en la ubicacion esperada|
       |44|Enrolamiento|al realizar un enrolamiento No se presenta el mensaje adecuado cuando se prueba con un usuario que este en la lista de control|mostrar el mensaje adecuado para usuarios en lista de control|
       |45|Enrolamiento|al realizar un enrolamiento El mensaje cuando el codigo OTP es incorrecto no presenta el mensaje adecuado de acuerdo al diseno A su vez al dar clic en Cerrar nos sca de la transaccion en vez de llevarlo a la ventan anterior|mostrar el mensaje adecuado de acuerdo al diseno|
       |46|Enrolamiento|al realizar un enrolamiento Cuando no se detecta cuentas de depositos el Sistema muestra mensaje de adquirirla pero al dar clic en Cerrar no me lleva a la ventana anterior sino que me lleva hasta home No respeta el flujo|llevar a la pantalla indicada de acuerdo al flujo|
       |47|Enrolamiento|al realizar un enrolamiento Cuando yo deseo enviar el OTP nuevamente luego de acaberse los primeros 30 segundos el sistema ya no me muestra el mensaje de conteo al darle nuevamente clic en el Esto hace que pueda darle otra vez clic generando error en la funcionalidad|mostrar el mensaje adecuado de acuerdo al diseno|
       |48|Enrolamiento|al realizar un enrolamiento Comportamiento extrano en la ventana del OTP Al momento de digitar el numero de OTP y deslizo la pantalla hacia arriba este se sale del marco no dejando visualizar de manera correcta la pantalla|mostrar el mensaje adecuado de acuerdo al diseno|
       |49|Enrolamiento|al realizar un enrolamiento la Ubicacion en los mensajes PopUp en diferente posicion En Android sobrepone en los botones volver y siguiente y en IOS no lo sobrepone|mostrar el mensaje adecuado de acuerdo al diseno|
       |50|Enrolamiento|al realizar un enrolamiento Cuando le doy enviar luego de ingresar mi numero de telefono y mientras que el contador este activo del envio de OTP doy clic en el boton volver al numero de telefono y luego doy clic en Enviar sale error que termina la Transaccion|tener el funcionamiento adecuado en el boton|
       |51|Enrolamiento|al realizar un enrolamiento No se muestra el mensaje correcto de Enrolamiento satisfactorio El usuario queda enrolado pero sale error 500|mostrar el mensaje de Enrolamiento Exitoso dado que fue solucionado el Bug|
       |52|Enrolamiento|al realizar un enrolamiento Permite enrolar el mismo celular con dos cuentas distintas de diferente usuario|tener el funcionamiento adecuado de acuerdo a la definicion|
       |53|Enrolamiento|al momento de estar en la ventana donde se listan las cuentas del cliente y tengo caracteres digitados en el buscador  no se muestra ninguna cuenta por que no coincide con los caracteres de la busquedad pero permite seleccionar el chek de autorizar datos  se entra a la pantalla de tratamiento de datos y cuando se cierra  ahi si se muestran las cuentas|tener el funcionamiento adecuado de acuerdo a la definicion|
       |54|Enrolamiento|al momento de digitar la comilla simple en el campo de busqueda de las cuentas se sobre pone el texto buscar|tener el funcionamiento adecuado de acuerdo a la definicion|
       |55|Enrolamiento|al realizar un enrolamiento Comportamiento extrano en la ventana las cuentas de deposito deslizo la pantalla hacia arriba al tener el foco en el campo buscar Este se sale del marco no dejando visualizar de manera correcta la pantalla|tener el funcionamiento adecuado de acuerdo a la definicion|
       |56|Enrolamiento|al momento de ingresar un OTP invalido 000000 se genera error Timed Out|tener el funcionamiento adecuado de acuerdo a la definicion|
       |57|Enrolamiento|al momento de enrolar los usuarios con Tipo de Documento 5 y 6 no permite ver la pantalla de ingreso del OTP Genera error Read Timed Out|tener el funcionamiento adecuado de acuerdo a la definicion|
       |58|Enrolamiento|al realizar un enrolamiento Cuando se desea ingresar al servicio de enolamiento se presenta Error DP902 Esto aparece en ocasiones En revision con banco se expone que es un codigo de error no reconocido por banco y es desplegado por Todo1|tener el funcionamiento adecuado de acuerdo a la definicion|
       |59|Enrolamiento|al realizar un enrolamiento Mensaje de No celular ya existente con otra cuenta en enrolamiento no es correcto|tener el funcionamiento adecuado de acuerdo a la definicion|
       |60|Enrolamiento|al realizar un enrolamiento Cuando se digita un valor numerico o letra en el campo Buscar cuando se tiene un usuarios con mas de 5 cuentas y luego damos clic para que parezca la ventana de autorizacion de datos y se cierra no aparecen todas las cuentas Para verlas nuevamente toca es poner el foco en el campo buscar|tener el funcionamiento adecuado de acuerdo a la definicion|
       |61|Enrolamiento|al realizar un enrolamiento Si ingreso un OTP invalido me aparece la ventana de PIN invalido pero si espero que acabe los 30 segundos para enviar nuevamente el PIN Sin cerrar la ventana PoPUp de PIN Invalido la ventana informativa de envio de OTP queda oculta por la otra ventana|tener el funcionamiento adecuado de acuerdo a la definicion|
       |62|Enrolamiento|al realizar un enrolamiento Si se desea enrolar por primera vez un usuario nuevo este me presenta un mensaje de Cuentas ocultas|tener el funcionamiento adecuado de acuerdo a la definicion|
       |63|Enrolamiento|al realizar un enrolamiento y se genera error visualizar la estructura de los mensajes|mostrar mensaje definido bien escrito|
       |64|Enrolamiento|al realizar un enrolamiento y se genera error Mensaje con caracteres especiales Verificar el tema de tildes|mostrar mensaje definido bien escrito|
       |65|Enrolamiento|al realizar un enrolamiento Si el usuario trata de generar dos veces el OTP para enviar el codigo al celular muestra el mensaje de que debe ingresar el OTP ya enviado Pero si ingresamos el OTP enviado inmeditamente se genera error ERR008|tener el funcionamiento adecuado de acuerdo a la definicion|
       |66|Enrolamiento|al realizar un enrolamiento y se genera Error 401 un usuario nuevo Ya no sale cuentas ocultas pero si sale error 401 en el primer ingreso a transfiya|tener el funcionamiento adecuado de acuerdo a la definicion|
       |67|Enrolamiento|al realizar un enrolamiento Luego de la correccion del defecto 62 ERR 008 ya no se muestra el mensaje expuesto el historia de usuario|tener el funcionamiento adecuado de acuerdo a la definicion|
       |68|Enrolamiento|al realizar un enrolamiento Si se ingresa con un usuario de tipo documento 9 Registro Civil y al momento de validar OTP se presenta un mensaje PopUp de Sistema no disponible|tener el funcionamiento adecuado de acuerdo a la definicion|