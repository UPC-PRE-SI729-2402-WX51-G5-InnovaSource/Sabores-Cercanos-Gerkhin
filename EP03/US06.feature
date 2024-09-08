Feature: Repetición de pedidos
  Como profesional ocupado quiero tener la opción de repetir mis pedidos anteriores para ahorrar tiempo al hacer futuras compras.

  Scenario: Repetir pedido exitoso
    Given que el usuario selecciona "repetir pedido"
    When confirma la acción
    Then el sistema carga automáticamente los detalles del pedido anterior.

    Examples:
      | Pedido Repetido    |
      |--------------------|
      | Pedido #001        |
      | Pedido #002        |

  Scenario: Pedido no disponible
    Given que el menú del pedido anterior ya no está disponible
    When el usuario intenta repetir el pedido
    Then el sistema sugiere una alternativa similar.

    Examples:
      | Pedido Original    | Sugerencia Alternativa |
      |--------------------|------------------------|
      | Menú #001          | Menú #003              |
      | Menú #002          | Menú #004              |

  Scenario: Repetir pedido con éxito
    Given que el usuario repite el pedido
    When confirma la acción
    Then el sistema genera un nuevo pedido con los mismos detalles que el anterior.

    Examples:
      | Pedido Repetido    |
      |--------------------|
      | Pedido #003        |
      | Pedido #004        |
