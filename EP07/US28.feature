Feature: Opciones de personalización
  Como cocinero casero quiero permitir a los clientes personalizar sus pedidos para ajustarlos a sus restricciones dietéticas.

  Scenario: Pedido personalizado exitoso
    Given que el cliente personaliza su pedido
    When confirma la personalización
    Then el sistema refleja las opciones personalizadas en el resumen del pedido.

    Examples:
      | Personalización    |
      |--------------------|
      | Sin gluten         |
      | Vegano             |

  Scenario: Error al seleccionar opción no disponible
    Given que el cliente intenta seleccionar una opción no disponible
    When lo hace
    Then el sistema muestra un mensaje de error.

    Examples:
      | Opción No Disponible |
      |----------------------|
      | Salsa extra          |
      | Pan integral         |

  Scenario: Notificación de personalización al cocinero
    Given que el cocinero recibe el pedido
    When el pedido ha sido personalizado
    Then el sistema notifica al cocinero sobre las modificaciones.

    Examples:
      | Personalización       |
      |-----------------------|
      | Sin lactosa           |
      | Baja en sodio         |
