# language: es

Característica: Trn-4002 Consulta de Terminos y Condiciones
  Como certificador de la APP Personas
  quiero realizar la consulta de terminos y condiciones
  para garantizar que despues del cambio responda exitosamente.

  @manual
  Esquema del escenario: Ejecucion exitosa consulta de terminos y condiciones en APP
    Dado que me autentico en la APP personas con el usuario <usuario>
    Cuando lanzo la Transaccion 4002 Consulta de terminos y condiciones por XML
    Entonces el sistema me responde <resultadoesperado>

    Ejemplos:
      | usuario    | resultadoesperado |
      | 1037889903 | exitosamente      |

