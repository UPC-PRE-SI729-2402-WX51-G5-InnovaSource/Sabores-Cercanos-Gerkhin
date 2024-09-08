Feature: Historial de pedidos
  Como profesional ocupado quiero acceder a mi historial de pedidos para revisar lo que he ordenado en el pasado y planificar mis futuras compras.

  Scenario: Ver historial de pedidos
    Given que el usuario accede a su historial de pedidos
    When visualiza los pedidos pasados
    Then el sistema muestra todos los detalles de los pedidos anteriores.

    Examples:
      | Historial pedidos  |
      |--------------------|
      | Pedido #001        |
      | Pedido #002        |

  Scenario: Repetir pedido desde historial
    Given que el usuario intenta volver a pedir algo desde su historial
    When selecciona un pedido anterior
    Then el sistema permite repetir el pedido fácilmente.

    Examples:
      | Seleccionar Anterior | 
      |----------------------|
      | Pedido #001          |
      | Pedido #002          |

  Scenario: Ver detalles de un pedido anterior
    Given que el usuario selecciona un pedido anterior
    When accede a los detalles del pedido
    Then el sistema muestra el resumen completo del pedido.

    Examples:
      |Detalles pedido anterior|
      |------------------------|
      | Pedido #003            |
      | Pedido #004            |
