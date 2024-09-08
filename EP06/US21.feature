Feature: Gestión de pagos
  Como cocinero casero quiero recibir los pagos a través de la plataforma para gestionar mis ingresos de forma segura.

  Scenario: Pago procesado después de la entrega
    Given que el cocinero completa un pedido
    When la entrega es confirmada por el cliente
    Then el sistema procesa el pago correspondiente.

    Examples:
      | Estado del Pedido   | Pago Procesado |
      |---------------------|----------------|
      | Pedido #001         | Sí             |
      | Pedido #002         | Sí             |

  Scenario: Advertencia por falta de configuración de método de pago
    Given que el cocinero no ha configurado su método de pago
    When intenta retirar fondos
    Then el sistema muestra un mensaje de advertencia solicitando la configuración de un método de pago.

    Examples:
      | Método de Pago Configurado | Mensaje de Advertencia |
      |----------------------------|------------------------|
      | No                         | Configure su método    |
      | No                         | Configure su método    |

  Scenario: Revisión de saldo después del pago
    Given que el pago ha sido completado
    When el cocinero revisa su saldo
    Then el sistema refleja correctamente el ingreso.

    Examples:
      | Saldo Antes  | Saldo Después |
      |--------------|---------------|
      | $100         | $150          |
      | $200         | $250          |
