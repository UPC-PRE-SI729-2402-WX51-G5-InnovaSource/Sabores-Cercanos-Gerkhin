Feature: Registro de cocineros
  Como cocinero casero quiero registrarme en la plataforma proporcionando mi nombre, ubicación y especialidades para ofrecer mis servicios.

  Scenario: Registro exitoso de cocinero
    Given que el cocinero ingresa su información básica correctamente
    When completa el formulario de registro
    Then el sistema permite el registro exitoso.

    Examples:
      | Nombre       | Especialidad     |
      |--------------|------------------|
      | Juan Pérez   | Comida peruana   |
      | Ana López    | Postres caseros  |

  Scenario: Registro fallido por campos obligatorios
    Given que el cocinero omite un campo obligatorio
    When intenta registrarse
    Then el sistema muestra un mensaje de error solicitando los campos obligatorios.

    Examples:
      | Campo Faltante   |
      |------------------|
      | Ubicación        |
      | Especialidades   |

  Scenario: Verificación de perfil tras el registro
    Given que el cocinero completa su registro
    When accede nuevamente a la plataforma
    Then el sistema muestra su perfil disponible con todos los datos ingresados.

    Examples:
      | Nombre        | Estado del Perfil |
      |---------------|-------------------|
      | Juan Pérez    | Perfil completo   |
      | Ana López     | Perfil completo   |
