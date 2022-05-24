# language: es

Característica: Trn-0219 Consulta de movimientos Bolsillos en la APP
  Como usuario de la APP Bancolombia
  Quiero realizar la consulta de movimientos
  Para conocer la lista de movimientos de mis bolsillos

  @manual
    @UserStory=1308438
  Esquema del escenario: Consulta de movimientos de bolsillos con paginación (más de 20 movimientos)
    Dado que Yo selecciono el bolsillo <nombreBolsillo>
    Y tengo los siguientes datos de prueba <ID> <numeroDocumento> <tipoDocumento> <usuario> <clave> <codigoError> <codigoTransaccion>
    Cuando realiza la consulta de movimientos seleccionando la opcion ver detalle y movimientos
    Entonces deberia ver el listado de movimientos del bolsillo

    Ejemplos:
      | ID | numeroDocumento | tipoDocumento | usuario      | clave |   codigoError | codigoTransaccion | nombreBolsillo|
      | 1  | 43025847        | 1             | userfiducia88 | 1234      | 000         | 0219              |  Cine|