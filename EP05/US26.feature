Feature: Revisión de clientes
  Como cocinero casero quiero revisar a mis clientes para asegurarme de que sean confiables y evitar problemas futuros.

  Scenario: Calificación de cliente después de un pedido
    Given que el cocinero completa un pedido
    When deja una calificación para el cliente
    Then el sistema guarda la calificación en el perfil del cliente.

    Examples:
      | Calificación del Cliente |
      |--------------------------|
      | 5 estrellas              |
      | 4 estrellas              |

  Scenario: Visualización del historial de interacciones
    Given que el cliente ha sido calificado previamente
    When el cocinero lo ve
    Then el sistema muestra el historial de interacciones.

    Examples:
      | Cliente Calificado   | Interacciones Anteriores |
      |----------------------|--------------------------|
      | Cliente #001         | 3 pedidos                |
      | Cliente #002         | 5 pedidos                |

  Scenario: Reporte de problemas con clientes
    Given que el cocinero reporta un problema con un cliente
    When lo hace
    Then el sistema abre un caso de revisión.

    Examples:
      | Problema Reportado   |
      |----------------------|
      | Cliente no pagó      |
      | Pedido conflictivo   |
