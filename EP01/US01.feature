Feature: Registro de consumidor
  Como profesional ocupado quiero registrarme en la plataforma para acceder a las opciones de comida casera.

  Scenario: Registro exitoso
    Given que un nuevo usuario quiere registrarse
    When ingresa sus datos válidos "usuario@example.com" y "Password123!"
    And presiona el botón de registro
    Then se crea una cuenta con éxito y se redirige al usuario a la página de inicio.

    Examples:
      | Correo Electrónico     | Contraseña        |
      |------------------------|-------------------|
      | usuario1@example.com   | Password123!      |
      | usuario2@example.com   | SecurePass123!    |

  Scenario: Registro con correo duplicado
    Given que un usuario intenta registrarse con un correo duplicado
    When ingresa el correo "usuario@example.com" y una contraseña válida
    And presiona el botón de registro
    Then se muestra un mensaje de error indicando que el correo ya está registrado.

    Examples:
      | Correo Electrónico     | Contraseña        | Mensaje de Error                 |
      |------------------------|-------------------|----------------------------------|
      | usuario1@example.com   | Password123!      | El correo ya está registrado     |
      | usuario2@example.com   | SecurePass123!    | El correo ya está registrado     |

  Scenario: Registro con datos incompletos
    Given que un usuario intenta registrarse sin completar los datos obligatorios
    When no completa todos los campos requeridos
    Then el sistema muestra un mensaje solicitando los campos obligatorios.

    Examples:
      | Correo Electrónico     | Contraseña        | Mensaje de Error               |
      |------------------------|-------------------|--------------------------------|
      |                         | Password123!      | Ingrese su correo electrónico  |
      | usuario3@example.com   |                   | Ingrese una contraseña válida  |
