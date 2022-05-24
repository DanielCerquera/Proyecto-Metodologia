 #language: es

 Característica: Anular enrolamiento de cliente en Tranfiya
   Como usuario de bancolombia quiero anular el enrolamiento desde el sistema trasnfiya

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
   Esquema del escenario: Casos de prueba asociados a Anular Enrolamiento
     Dado que estoy en la funcionalidad de <funcionalidad>
     Cuando deseo que <accion>
     Entonces se debe <resultadoEsperado> para el <Caso>

     Ejemplos:
       |Caso|funcionalidad|accion|resultadoEsperado|
       |1|Anular Enrolamiento|al Anular Enrolamiento a traves de la eliminacion del numero de celular inscrito|presentar la pantalla de anulamiento exitoso Verificar que despues del anulamiento se muestre el numero de celular numero de comprobante fecha hora y opcion de Vincular celuar|
       |2|Anular Enrolamiento|al Anular Enrolamiento a traves de la eliminacion de la cuenta deposito inscrita|presentar la pantalla de anulamiento exitoso Verificar que despues del anulamiento se muestre solo el numero de cuenta tipo de cuenta nombre perzonalizado de la cuenta/nombre de la cuenta Ahorros Corriente numero de comprobante fecha hora y opcion de Vincular cuenta preferente|
       |3|Anular Enrolamiento|al Realizar un desenrolamiento con un cliente que no se encuentre enrolado|redirigir a enrolar al cliente Al dar tap en administracion transfiya|
       |4|Anular Enrolamiento|En proceso de desenrolamiento|Verificar que solo se muestre el numero de celular enrolado En la ventana celular|
       |5|Anular Enrolamiento|En proceso de desenrolamiento|Verificar que solo se muestre el numero y tipo de cuenta enrolada En la ventana cuenta favorita|
       |6|Anular Enrolamiento|En proceso de desenrolamiento|Verificar que al dar tap sobre el numero de celular abra un menu con las opciones de eliminar y cerrar|
       |7|Anular Enrolamiento|En proceso de desenrolamiento|Verificar que al dar tap sobre el la cuenta abra un menu con las opciones de eliminar y cerrar|
       |8|Anular Enrolamiento|En proceso de desenrolamiento|Verificar que al dar tap sobre eliminar se muestre el mensaje de Al eliminar el celular preferente tambien eliminaras la cuenta favorita asociada Para usar Transfiya debes registrarte nuevamente .Quieres eliminar el celular preferente numero celular. Anulacion por numero de celular|
       |9|Anular Enrolamiento|En proceso de desenrolamiento|Verificar que al dar tap sobre eliminar se muestre el mensaje de Al eliminar tu cuenta favorita tambien eliminaras el celular asociado Para usar Transfiya debes registrarte nuevamente .Quieres eliminar la cuenta favorita numero cuenta. Anulacion por cuenta favorita|
       |10|Anular Enrolamiento|al finalizar el desenrolamiento por celular en la ventana de .Eliminacion exitosa. se presente la opcion de Vincular celular|Debe redirigir a enrolar al cliente|
       |11|Anular Enrolamiento|al finalizar el desenrolamiento por cuenta favorita en la ventana de .Eliminacion exitosa.  se presente la opcion de Vincular cuenta preferente|Debe redirigir a enrolar al cliente|
       |12|Anular Enrolamiento|al Anular Enrolamiento cuando se tiene Indisponibilidad Canal|Validar que se presente los mensajes de indisponibilidad|
       |13|Anular Enrolamiento|al Anular Enrolamiento cuando se tiene Indisponibilidad Core|Validar que se presente los mensajes de indisponibilidad|
       |14|Anular Enrolamiento|al Anular Enrolamiento cuando se tiene Indisponibilidad ACH|Validar que se presente los mensajes de indisponibilidad|
       |15|Anular Enrolamiento|al Anular Enrolamiento realizar las validaciones de L&F se presente de acuerdo a lo solicitado|prsentar  El titulo de Eliminar Cuenta no esta bien escrito dice Eiminar|
       |16|Anular Enrolamiento|al Anular Enrolamiento y al cambiarme entre ventanas e intento eliminar la cuenta favorita y el celular para que muestre el titulo de eliminar la cuenta o el celular este titulo es el mismo para los dos|Se presenta el mismo titulo para cuenta o celular|
       |17|Anular Enrolamiento|al Anular Enrolamiento la informacion que se presenta cuando se va a eliminar el Celular no esta alineada como lo muestra el prototipo Se probo en dispositvo IOS y Android|validar que La informacion este alineada como lo presenta el protipo|
       |18|Anular Enrolamiento|al Anular Enrolamiento y al tener un usuario enrolado y deseo inmediatamente ir a Administracion Transfiya y eliminar la cuenta favorita o celular para volver a enrolarlo inmediatamente  Sin cerrar sesion este me muestra el enrolamiento exitoso pero con el celular anteriormente enrolado y que ya habia sido eliminado|No debe presentar el enrolamiento exitoso pero con el celular anteriormente enrolado y que ya habia sido eliminado|