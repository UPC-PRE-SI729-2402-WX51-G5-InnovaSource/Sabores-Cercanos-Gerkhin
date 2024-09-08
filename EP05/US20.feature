Feature: Integración de recetas
  Como cocinero casero quiero compartir recetas de mis platos para que los usuarios puedan replicarlos en sus casas.

  Scenario: Publicación exitosa de receta
    Given que el cocinero sube una receta completa
    When la receta es publicada
    Then el sistema permite que los usuarios la guarden en su perfil.

    Examples:
      | Receta Publicada   |
      |--------------------|
      | Receta de ceviche  |
      | Receta de arroz con pollo |

  Scenario: Publicación fallida de receta incompleta
    Given que el cocinero sube una receta incompleta
    When intenta publicarla
    Then el sistema solicita que complete los campos faltantes.

    Examples:
      | Campo Faltante     |
      |--------------------|
      | Ingredientes       |
      | Instrucciones      |

  Scenario: Notificación de actualización de receta guardada
    Given que los usuarios guardan una receta
    When el cocinero sube una nueva versión
    Then el sistema notifica a los usuarios que la receta ha sido actualizada.

    Examples:
      | Receta Actualizada   |
      |----------------------|
      | Receta de ceviche    |
      | Receta de lasaña     |
