#language: es

Característica: Trn-3100 Inscripcion a clave dinamica por softoken en la APP
  Como usuario de la APP Bancolombia
  Quiero realizar la inscripcion a clave dinamica
  Para realizar transacciones de manera segura

  @manual
  Esquema del escenario: Inscripcion clave dinamica
    Dado que <nombre> se encuentra enrolado en la APP con el usuario <usuario>
    Cuando intenta realizar la inscripcion a clave dinamica en el dispostivo <dispositivo>
    Entonces deberia ver el mensaje <mensaje>
    Y se verifica el registro en el Log del Canal COMFFLGWWW

    Ejemplos:
      |nombre |usuario   |dispositivo|mensaje            |
      |Alberto|invictus02|Android    |Inscripcion exitosa|
      |Alberto|invictus02|iOS        |Inscripcion exitosa|
      |Alberto|invictus02|Huawei     |Inscripcion exitosa|

  @manual
  Esquema del escenario: Flujo transaccional Inscripcion Clave dinamica

    Dado que el usuario esta en la APP
    Cuando realiza la inscripcion a clave dinamica por softoken
    Entonces deberia ver el mensaje de inscripcion exitosa
    Y se verifica  que se lancen las transacciones <Trn-1> <Trn-2> <Trn-3> <Trn-4> <Trn-5> <Trn-6> <Trn-7> <Trn-8>

    Ejemplos:

      |Trn-1               |Trn-2                   |Trn-3                               |Trn-4        |Trn-5                          |Trn-6                               |Trn-7                            |Trn-8                            |
      |Autenticacion - 0369|Consulta Info OTP - 3700|Clave dinamica data seguridad - 3900|GetPin - 3200|Validar codigo seguridad - 3300|Clave dinamica data seguridad - 3900|Inscripcion clave dinamica - 3100|Notificar enrolamiento OTP - 3101|

  @manual
  Esquema del escenario: Inscripción clave dinámica por STK en APP por migración ODA
    Dado que <nombre> se encuentra logueado en la SVP con el usuario <usuario>
    Cuando intenta realizar la inscripcion a clave dinamica de un usuario en stage <stage> y los datos de seguridad cambian <Datos Seguridad>
    Entonces validar que se presente con la clave dinamica <Resultado CD>, bloqueo posterior al delay <Desbloqueo>
    Y se verifica el <Mensaje>, de notificacion en la APP
    Y se verifica el registro en el Log del Canal COMFFLGWWW

    Ejemplos:
      |nombre |usuario   |stage|Datos Seguridad|Resultado CD|Desbloqueo| Mensaje             |
      |Alberto|invictus02|4    |SI             |Bloqueo     |SI        | Mensaje sin cambio |
      |Alberto|invictus02|4    |NO             |Inscrito    |N/A       | Mensaje sin cambio |
      |Alberto|invictus02|6    |N/A            |Bloqueo     |SI        | Mensaje sin cambio |
      |Alberto|invictus02|7    |SI             |Bloqueo     |SI        | Mensaje sin cambio |
      |Alberto|invictus02|7    |NO             |Inscrito    |N/A       | Mensaje sin cambio |
      |Alberto|invictus02|4    |Si             |Inscrito    |SI        | Mensaje largo      |
      |Alberto|invictus02|4    |NO             |Inscrito    |N/A       | Mensaje largo      |
      |Alberto|invictus02|6    |NA             |Inscrito    |N/A       | Mensaje largo      |
      |Alberto|invictus02|7    |SI             |Inscrito    |SI        | Mensaje largo      |
      |Alberto|invictus02|6    |NO             |Inscrito    |N/A       | Mensaje largo      |