Feature: Búsqueda de comidas
  Como profesional ocupado quiero buscar comidas cercanas a mi ubicación para encontrar opciones rápidas.

  Scenario: Búsqueda exitosa con geolocalización permitida
    Given que el usuario permite el acceso a su ubicación
    When realiza una búsqueda de comidas cercanas
    Then el sistema muestra opciones cercanas a su ubicación.

    Examples:
      | Ubicación                |
      |--------------------------|
      | Ubicación habilitada     |
      | Ubicación permitida      |

  Scenario: Búsqueda con geolocalización deshabilitada
    Given que el usuario no permite el acceso a su ubicación
    When realiza una búsqueda de comidas
    Then el sistema solicita al usuario que ingrese una ubicación manual.

    Examples:
      | Ubicación                  | Mensaje de Solicitud         |
      |----------------------------|------------------------------|
      | Ubicación deshabilitada    | Ingrese una ubicación manual |
      | Ubicación no permitida     | Ingrese una ubicación manual |

  Scenario: Búsqueda con restricciones dietéticas
    Given que el usuario tiene restricciones dietéticas
    When realiza una búsqueda de comidas
    Then el sistema muestra opciones que cumplen con sus restricciones dietéticas.

    Examples:
      | Restricciones dietéticas   |
      |----------------------------|
      | Sin gluten                 |
      | Vegetariano                |
