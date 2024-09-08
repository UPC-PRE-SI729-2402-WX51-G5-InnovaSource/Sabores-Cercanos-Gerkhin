Feature: Notificaciones de nuevos menús
  Como profesional ocupado quiero recibir notificaciones sobre nuevos menús cerca de mi ubicación para aprovechar las ofertas más recientes.

  Scenario: Notificación de nuevos menús
    Given que el usuario está suscrito a notificaciones
    When se publica un nuevo menú
    Then el sistema envía una alerta en tiempo real.

    Examples:
      | Tipo de Menú       | Notificación        |
      |--------------------|---------------------|
      | Menú vegetariano   | Alerta enviada      |
      | Menú con oferta    | Alerta enviada      |

  Scenario: Desactivación de notificaciones
    Given que el usuario ha desactivado las notificaciones
    When cambia esta opción en su perfil
    Then el sistema debe dejar de enviar alertas.

    Examples:
      | Estado de Notificación  |
      |-------------------------|
      | Notificaciones activas  |
      | Notificaciones inactivas|

  Scenario: Notificaciones configuradas para categorías específicas
    Given que el usuario ha configurado alertas específicas
    When se publican ofertas relevantes
    Then el sistema envía una notificación solo para esas categorías.

    Examples:
      | Categoría          |
      |--------------------|
      | Sin gluten         |
      | Vegano             |
