Feature: Selección de menú personalizado
  Como profesional ocupado quiero personalizar mi pedido según mis preferencias para ajustar la comida a mis necesidades.

  Scenario: Personalización exitosa
    Given que el usuario selecciona un menú personalizado
    When confirma su pedido
    Then el sistema refleja las modificaciones en el resumen del pedido.

    Examples:
      | Opción Personalizada   | Modificación      |
      |------------------------|-------------------|
      | Sin lactosa            | Quitar queso      |
      | Vegano                 | Sustituir carne   |

  Scenario: Error al agregar opciones no disponibles
    Given que el usuario intenta agregar opciones no disponibles
    When selecciona un elemento no disponible
    Then el sistema muestra un mensaje de error.

    Examples:
      | Opción Seleccionada | Mensaje de Error                  |
      |---------------------|-----------------------------------|
      | Agregar salsa extra | La salsa extra no está disponible |
      | Agregar pan integral| El pan integral no está disponible|

  Scenario: Notificación de aceptación del pedido personalizado
    Given que el cocinero acepta el pedido personalizado
    When el pedido es aceptado
    Then el sistema notifica al usuario con los detalles actualizados.

    Examples:
      | Estado del Pedido  |
      |--------------------|
      | Pedido aceptado    |
      | Pedido modificado  |
