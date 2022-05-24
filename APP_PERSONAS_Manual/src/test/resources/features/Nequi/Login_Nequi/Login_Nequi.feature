 #language: es

Característica: Login en la App Nequi
  Como Usuario de Nequi
  Quiero poder Logearme a la app Nequi
  Para poder implementar todos los servicios que me suministra la app

  @manual
  Esquema del escenario: Logeo Exitoso app Nequi
    Dado Abro la aplicacion Neui
    Cuando Ingreso el número de celular <celular>
    Y Selecciono la opción "Entra"
    Y ingreso la clave <clave>
    Entonces el sistema me presenta en la pantalla "mochila" de la app

    Ejemplos:
      | celular       | clave |
      | 3024513491    | 0709  |


  @manual
  Esquema del escenario: Logeo fallido app Nequi
  Dado Abro la aplicacion Neui
  Cuando Ingreso el número de celular <celular>
  Y Selecciono la opción "Entra"
  Y ingreso la clave <clave>
  Entonces se presenta el toast "Clave incorrecta"

    Ejemplos:
      | celular       | clave |
      | 3024513491    | 1234  |
