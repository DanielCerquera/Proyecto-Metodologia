# language: es

Característica: Trn-1130 Consulta de precalculados en la APP
  Como usuario de la APP Bancolombia
  Quiero realizar la consulta de precalculados
  Para validar los productos que el banco me ofrece

  @manual
  Esquema del escenario: Consulta para Banner usuario con Preaprobados
    Dado que <nombre> se autentico en la APP con el usuario <usuario> y la clave <clave>
    Cuando realiza la consulta de preaprobados en el dispositivo <dispositivo>
    Entonces deberia ver la informacion del producto ofrecido
    Y se verifica el registro en el Log del Canal COMFFLGWWW
    Ejemplos:
      |nombre   |usuario         |clave|dispositivo|
      |Humberto |usrpreaprobado02|1234 |Android    |

  @manual
  Esquema del escenario: Consulta para Banner usuario con Rediferidos
    Dado que <nombre> se autentico en la APP con el usuario <usuario> y la clave <clave>
    Cuando realiza la consulta de rediferidos en el dispositivo <dispositivo>
    Entonces deberia ver la informacion del producto ofrecido
    Y se verifica el registro en el Log del Canal COMFFLGWWW
    Ejemplos:
      |nombre|usuario      |clave|dispositivo|
      |Elena |pruebamasif17|1234 |Android    |

  @manual
  Esquema del escenario: Consulta para Banner usuario con Preaprobados y Rediferidos
    Dado que <nombre> se autentico en la APP con el usuario <usuario> y la clave <clave>
    Cuando realiza la consulta de preaprobados y rediferidos en el dispositivo <dispositivo>
    Entonces deberia ver la informacion del producto rediferido
    Y se verifica el registro en el Log del Canal COMFFLGWWW
    Ejemplos:
      |nombre|usuario       |clave|dispositivo|
      |Elena |pruebamasif17	|1234 |Android    |

  @manual
  Esquema del escenario: Consulta para Banner usuario sin Preaprobados y sin Rediferidos
    Dado que <nombre> se autentico en la APP con el usuario <usuario> y la clave <clave>
    Cuando realiza la consulta de preaprobados y rediferidos en el dispositivo <dispositivo>
    Entonces no se deberia ver la informacion de los productos
    Y se verifica el registro en el Log del Canal COMFFLGWWW
    Ejemplos:
      |nombre  |usuario       |clave|dispositivo|
      |Anselma |movimientos01 |1234 |Android    |