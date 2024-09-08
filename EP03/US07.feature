Feature: Programación de pedidos
  Como profesional ocupado quiero programar la fecha y hora de entrega de mis pedidos para asegurarme de recibir la comida cuando la necesite.

  Scenario: Programación exitosa de entrega
    Given que el usuario selecciona una fecha futura para la entrega
    When confirma el pedido
    Then el sistema agenda la entrega para esa fecha.

    Examples:
      | Fecha de Entrega   |
      |--------------------|
      | 2024-09-10         |
      | 2024-09-12         |

  Scenario: Cocinero no disponible
    Given que el cocinero no está disponible para la fecha seleccionada
    When el usuario intenta programar la entrega
    Then el sistema sugiere una nueva fecha disponible.

    Examples:
      | Fecha Solicitada   | Fecha Sugerida      |
      |--------------------|---------------------|
      | 2024-09-10         | 2024-09-11          |
      | 2024-09-12         | 2024-09-13          |

  Scenario: Recordatorio de entrega programada
    Given que el pedido está programado
    When la fecha de entrega se acerque
    Then el sistema envía una notificación de recordatorio al usuario.

    Examples:
      | Fecha de Entrega   |
      |--------------------|
      | 2024-09-10         |
      | 2024-09-12         |
