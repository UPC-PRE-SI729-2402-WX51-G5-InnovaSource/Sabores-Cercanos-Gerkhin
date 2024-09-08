Feature: Estadísticas de recetas compartidas
  Como cocinero casero quiero ver cuántas veces se han guardado o compartido mis recetas para medir el interés de los usuarios.

  Scenario: Visualización de cuántas veces se ha guardado una receta
    Given que el cocinero sube una receta
    When los usuarios la guardan en su perfil
    Then el sistema refleja cuántas veces ha sido guardada.

    Examples:
      | Receta Guardada   | Veces Guardada |
      |-------------------|----------------|
      | Receta de pizza   | 10             |
      | Receta de ensalada| 8              |

  Scenario: Visualización agrupada de estadísticas de recetas
    Given que el cocinero ha subido varias recetas
    When revisa su perfil
    Then el sistema muestra las estadísticas agrupadas.

    Examples:
      | Recetas Subidas   | Total Veces Guardada |
      |-------------------|----------------------|
      | 5 recetas         | 25                   |

  Scenario: Generación de informe descargable
    Given que el cocinero quiere compartir estadísticas
    When selecciona las estadísticas de recetas
    Then el sistema genera un informe descargable.

    Examples:
      | Informe Generado |
      |------------------|
      | Sí               |
