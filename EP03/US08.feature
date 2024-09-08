Feature: Métodos de pago
  Como profesional ocupado quiero pagar mi pedido a través de múltiples métodos de pago para tener más flexibilidad.

  Scenario: Pago con tarjeta de crédito
    Given que el usuario selecciona tarjeta de crédito como método de pago
    When confirma el pago
    Then el sistema procesa el pago de manera segura.

    Examples:
      | Tarjeta de Crédito |
      |--------------------|
      | Visa               |
      | Mastercard         |

  Scenario: Pago con PayPal
    Given que el usuario selecciona PayPal como método de pago
    When confirma el pago
    Then el sistema redirige al usuario a PayPal para completar la transacción.

    Examples:
      | Cuenta PayPal      |
      |--------------------|
      | paypal_user1       |
      | paypal_user2       |

  Scenario: Pago por transferencia bancaria
    Given que el usuario selecciona transferencia bancaria como método de pago
    When selecciona esta opción
    Then el sistema muestra las instrucciones de pago correspondientes.

    Examples:
      | Banco Seleccionado   |
      |----------------------|
      | Banco Nacional       |
      | Banco Internacional  |
