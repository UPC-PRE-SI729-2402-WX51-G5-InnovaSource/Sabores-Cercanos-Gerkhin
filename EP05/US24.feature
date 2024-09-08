Feature: Función de reordenar
  Como cocinero casero quiero permitir a los usuarios volver a ordenar los mismos menús para simplificar sus futuras compras.

  Scenario: Reordenar menú exitosamente
    Given que el cliente selecciona la opción de "reordenar"
    When confirma el pedido
    Then el sistema carga el pedido previo automáticamente.

    Examples:
      | Pedido Reordenado  |
      |--------------------|
      | Pedido #001        |
      | Pedido #002        |

  Scenario: Actualización de precios en reorden
    Given que el cocinero ha cambiado los precios
    When el cliente reordena el menú
    Then el sistema refleja los nuevos precios.

    Examples:
      | Pedido Original   | Nuevo Precio |
      |-------------------|--------------|
      | Menú #001         | $12          |
      | Menú #002         | $15          |

  Scenario: Notificación de menú no disponible
    Given que el menú ya no está disponible
    When el cliente intenta reordenar
    Then el sistema notifica la indisponibilidad del pedido.

    Examples:
      | Menú Original     |
      |-------------------|
      | Menú #003         |
      | Menú #004         |
