# language: es

Característica: Trn-4001 Registro en APP Personas
  Como certificador de la APP Personas
  quiero realizar el registro de mi usuario en la APP
  para garantizar que despues del cambio responda exitosamente.

  @manual
  Esquema del escenario: Ejecucion exitosa registro en APP Personas
    Dado que me autentico en la APP personas con el usuario <usuario>
    Cuando lanzo la Transaccion 0447 Inscripcion de facturas por XML
    Entonces el sistema me responde <resultadoesperado>

    Ejemplos:
      | usuario    | resultadoesperado |
      | 24561728   | exitosamente      |

