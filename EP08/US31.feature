Feature: Descripción de servicios en el landing page
  Como visitante del segmento profesional ocupado quiero ver una descripción clara de los servicios de comida disponibles en el landing page para poder entender rápidamente la oferta de la plataforma.

  Scenario: Visualización de descripciones claras de servicios
    Given que el visitante ingresa al landing page
    When accede a la sección de servicios
    Then el sistema muestra descripciones claras de las opciones de comida.

    Examples:
      | Servicio Descrito      |
      |------------------------|
      | Comida vegana          |
      | Menús sin gluten       |

  Scenario: Visualización de información adicional de servicios
    Given que el visitante selecciona una opción de comida
    When lo hace
    Then el sistema muestra información adicional como precios y ubicación.

    Examples:
      | Servicio Descrito   | Información Adicional |
      |---------------------|-----------------------|
      | Comida peruana      | Precios y ubicación   |
      | Postres caseros     | Precios y ubicación   |

  Scenario: Redirección a más detalles del servicio
    Given que el visitante hace clic en "ver más detalles"
    When lo hace
    Then es redirigido a una página con más información sobre el servicio.

    Examples:
      | Opción Seleccionada   | Redirección           |
      |-----------------------|-----------------------|
      | Comida vegana         | Página de más detalles|
      | Menús sin gluten      | Página de más detalles|
