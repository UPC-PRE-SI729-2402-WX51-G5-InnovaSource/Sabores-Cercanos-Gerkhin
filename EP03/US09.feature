Feature: Confirmación de entrega
  Como profesional ocupado quiero confirmar la recepción de mi pedido para asegurarme de que el servicio fue exitoso.

  Scenario: Confirmación exitosa de entrega
    Given que el usuario recibe su pedido
    When confirma la recepción
    Then el sistema marca el pedido como completado.

    Examples:
      | Pedido Recibido    |
      |--------------------|
      | Pedido #001        |
      | Pedido #002        |

  Scenario: Espera de confirmación por el cliente
    Given que el usuario no confirma la entrega
    When el cocinero notifica que la entrega ha sido realizada
    Then el sistema espera la confirmación del cliente.

    Examples:
      | Estado del Pedido  |
      |--------------------|
      | Entrega notificada |
      | Esperando confirmación |

  Scenario: Reporte de problema en la entrega
    Given que el usuario reporta un problema con la entrega
    When hace el reporte
    Then el sistema abre una disputa para revisar el caso.

    Examples:
      | Tipo de Problema   |
      |--------------------|
      | Pedido incompleto  |
      | Pedido en mal estado|
