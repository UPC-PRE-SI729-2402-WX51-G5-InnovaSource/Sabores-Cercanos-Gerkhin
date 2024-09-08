Feature: Gestión de favoritos
  Como profesional ocupado quiero poder guardar mis cocineros y menús favoritos para acceder fácilmente a ellos en el futuro.

  Scenario: Guardar cocinero como favorito
    Given que el usuario selecciona un cocinero como favorito
    When guarda al cocinero
    Then el sistema lo guarda en su perfil de favoritos.

    Examples:
      | Cocinero Favorito  |
      |--------------------|
      | Cocinero #001      |
      | Cocinero #002      |

  Scenario: Acceder a menú guardado
    Given que el usuario guarda un menú en sus favoritos
    When accede nuevamente al menú
    Then el sistema muestra el menú en su sección de favoritos.

    Examples:
      | Menú Guardado      |
      |--------------------|
      | Menú #001          |
      | Menú #002          |

  Scenario: Ordenar desde un menú guardado no disponible
    Given que el usuario intenta ordenar de un menú guardado
    When el menú ya no está disponible
    Then el sistema sugiere una alternativa similar.

    Examples:
      | Menú Guardado      | Alternativa Sugerida  |
      |--------------------|-----------------------|
      | Menú #001          | Menú #003             |
      | Menú #002          | Menú #004             |
