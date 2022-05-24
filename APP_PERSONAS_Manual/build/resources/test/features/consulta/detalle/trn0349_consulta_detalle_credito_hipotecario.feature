# language: es

Característica: Trn-0349 Consulta de Detalle Credito Hipotecario en la APP
  Como usuario certificador de la APP
  Quiero realizar la consulta de detalle de credito hipotecario
  Para validar en el iseries que no se dispare la consulta de movimientos de credito hipotecario

  @manual
  Esquema del escenario: Consultar detalle credito hipotecario
    Dado que <nombre> se autentico en la APP con el usuario <usuario> y la clave <clave>
    Cuando realiza la consulta de detalle seleccionando la opcion creditos
    Entonces deberia ver el detalle del credito hipotecario
    Y se verifica el flujo transaccional en el Log del Canal COMFFLGWWW

    Ejemplos:
      |nombre|usuario      |clave|
      |Luis  |1004113571   |1234 |
