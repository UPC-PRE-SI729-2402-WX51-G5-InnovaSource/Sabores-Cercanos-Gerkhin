Feature: Botones de llamada a la acción en el landing page
  Como visitante del landing page quiero ver botones claros de llamada a la acción para registrarme rápidamente o comenzar a buscar comida.

  Scenario: Registro desde botón de llamada a la acción
    Given que el visitante ve el landing page
    When llega al área de botones de llamada a la acción
    Then puede registrarse o iniciar sesión con un solo clic.

    Examples:
      | Acción Seleccionada | Resultado              |
      |---------------------|------------------------|
      | Registrarse         | Redirigido al registro |
      | Iniciar sesión      | Redirigido a login     |

  Scenario: Búsqueda de comida desde botón de llamada a la acción
    Given que el visitante hace clic en "Buscar comida"
    When lo hace
    Then el sistema lo dirige directamente a la búsqueda de comida.

    Examples:
      | Acción Seleccionada | Resultado                          |
      |---------------------|------------------------------------|
      | Buscar comida       | Redirigido a la búsqueda de comida |
     
