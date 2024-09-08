Feature: Confirmación de entregas
  Como cocinero casero quiero confirmar la entrega de los pedidos para asegurarme de que los clientes los reciban a tiempo.

  Scenario: Confirmación exitosa de entrega
    Given que el cocinero realiza una entrega
    When el pedido es recibido por el cliente
    Then el sistema actualiza el estado del pedido a "entregado".

    Examples:
      | Estado del Pedido   |
      |---------------------|
      | Pedido entregado    |
      | Pedido en espera    |

  Scenario: Notificación de entrega fallida
    Given que el cocinero no puede entregar el pedido
    When indica la falla en la entrega
    Then el sistema notifica al cliente.

    Examples:
      | Estado del Pedido   |
      |---------------------|
      | Entrega fallida     |
      | Reintento de entrega|

  Scenario: Inicio de disputa por problema de entrega
    Given que el cliente reporta un problema con la entrega
    When el cocinero recibe la notificación
    Then el sistema inicia una disputa automáticamente.

    Examples:
      | Tipo de Problema    |
      |---------------------|
      | Pedido incompleto   |
      | Pedido dañado       |
