Feature: Búsqueda de recetas de cocina
  Como profesional ocupado quiero buscar recetas de cocina casera en la plataforma para poder replicarlas en casa durante mi tiempo libre.

  Scenario: Búsqueda de recetas por palabra clave
    Given que el usuario busca recetas ingresando una palabra clave
    When ingresa "pasta" en el campo de búsqueda
    Then el sistema muestra las recetas relacionadas.

    Examples:
      | Palabra Clave |
      |---------------|
      | pasta         |
      | arroz         |

  Scenario: Filtros avanzados en la búsqueda de recetas
    Given que el usuario aplica filtros para encontrar recetas
    When selecciona "tiempo de preparación: menos de 30 minutos"
    Then el sistema muestra recetas que cumplen con este criterio.

    Examples:
      | Filtro Aplicado               |
      |-------------------------------|
      | Menos de 30 minutos           |
      | Nivel de dificultad: fácil    |

  Scenario: Visualización de receta seleccionada
    Given que el usuario encuentra una receta de su interés
    When selecciona la receta
    Then el sistema muestra los detalles completos, incluidos los ingredientes y el paso a paso.

    Examples:
      | Receta Seleccionada |
      |---------------------|
      | Espaguetis al pesto |
      | Ensalada de quinoa  |
