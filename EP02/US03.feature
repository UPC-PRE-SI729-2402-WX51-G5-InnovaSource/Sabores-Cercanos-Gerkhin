Feature: Filtros avanzados de búsqueda
  Como profesional ocupado quiero aplicar filtros avanzados para encontrar rápidamente opciones de comida que se ajusten a mis necesidades.

  Scenario: Filtro por precio
    Given que el usuario aplica un filtro por precio
    When realiza la búsqueda de comidas
    Then el sistema muestra solo las opciones dentro del presupuesto seleccionado.

    Examples:
      | Filtro de Precio |
      |------------------|
      | Menor a $10      |
      | $10 - $20        |

  Scenario: Filtro por distancia
    Given que el usuario aplica un filtro por distancia
    When realiza la búsqueda de comidas
    Then el sistema muestra solo las opciones cercanas.

    Examples:
      | Filtro de Distancia |
      |---------------------|
      | Menos de 2 km       |
      | Entre 2 km y 5 km   |

  Scenario: Combinación de múltiples filtros
    Given que el usuario combina filtros de precio y distancia
    When realiza la búsqueda de comidas
    Then el sistema muestra solo las opciones que cumplen con todos los criterios.

    Examples:
      | Filtro de Precio  | Filtro de Distancia |
      |-------------------|---------------------|
      | Menor a $15       | Menos de 3 km       |
      | $10 - $25         | Entre 1 km y 4 km   |
