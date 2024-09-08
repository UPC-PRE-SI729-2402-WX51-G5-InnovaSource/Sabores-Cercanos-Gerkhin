Feature: Configuración de áreas de entrega
  Como cocinero casero quiero configurar las áreas de entrega de mis pedidos para que solo los usuarios dentro de esas zonas puedan realizar pedidos.

  Scenario: Configuración exitosa de zona de entrega
    Given que el cocinero selecciona una zona de entrega válida
    When confirma la selección
    Then el sistema habilita la entrega en las áreas seleccionadas.

    Examples:
      | Zona de Entrega    |
      |--------------------|
      | Lima metropolitana |
      | Cusco              |

  Scenario: Error por zona de entrega no válida
    Given que el cocinero selecciona una zona de entrega no válida
    When intenta confirmar
    Then el sistema muestra un mensaje de error.

    Examples:
      | Zona Seleccionada      | Mensaje de Error                 |
      |------------------------|----------------------------------|
      | Zona fuera de Lima     | La zona seleccionada no es válida|
      | Zona de dificil acceso | La zona seleccionada no es válida|

  Scenario: Bloqueo de pedidos fuera de la zona de entrega
    Given que el cocinero selecciona una zona de entrega
    When un usuario fuera de la zona intenta hacer un pedido
    Then el sistema bloquea la opción de hacer el pedido.

    Examples:
      | Zona de Entrega   | Bloqueo de Pedido |
      |-------------------|-------------------|
      | Cusco             | Pedido bloqueado  |
      | Arequipa          | Pedido bloqueado  |
