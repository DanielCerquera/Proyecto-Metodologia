# language: es

Característica: Trn-0447 Inscripcion de facturas
  Como certificador de la APP Personas
  quiero realizar la inscripcion de facturas en la APP
  para garantizar que despues del cambio responda exitosamente.

  @manual
  Esquema del escenario: Ejecucion exitosa inscripcion de facturas en APP
    Dado que me autentico en la APP personas con el usuario <usuario>
    Cuando lanzo la Transaccion 0447 Inscripcion de facturas por XML
    Entonces el sistema me responde <resultadoesperado>

    Ejemplos:
      | usuario    | resultadoesperado |
      | 1037889903 | exitosamente      |

