Feature: Recepción de pedidos
  Como cocinero casero quiero recibir notificaciones automáticas de nuevos pedidos para empezar a preparar la comida a tiempo.

  Scenario: Notificación de nuevo pedido
    Given que el usuario hace un pedido
    When se confirma el pedido
    Then el sistema notifica inmediatamente al cocinero.

    Examples:
      | Pedido Confirmado  |
      |--------------------|
      | Pedido #001        |
      | Pedido #002        |

  Scenario: Actualización del estado del pedido
    Given que el cocinero tiene un pedido pendiente
    When el pedido es procesado
    Then el sistema muestra el estado actualizado.

    Examples:
      | Estado del Pedido   |
      |---------------------|
      | En preparación      |
      | Listo para enviar   |

  Scenario: Notificación de cancelación de pedido
    Given que el pedido es cancelado por el usuario
    When ocurre la cancelación
    Then el cocinero recibe una notificación de cancelación.

    Examples:
      | Pedido Cancelado    |
      |---------------------|
      | Pedido #003         |
      | Pedido #004         |
