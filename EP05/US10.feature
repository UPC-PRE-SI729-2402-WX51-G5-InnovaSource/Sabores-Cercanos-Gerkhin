Feature: Calificaciones de servicios
  Como profesional ocupado quiero calificar el servicio del cocinero para ayudar a otros usuarios a tomar mejores decisiones.

  Scenario: Calificación exitosa
    Given que el usuario completa un pedido
    When deja una calificación y comentario
    Then el sistema permite que otros usuarios vean la calificación.

    Examples:
      | Calificación       |
      |--------------------|
      | 5 estrellas        |
      | 4 estrellas        |

  Scenario: Recordatorio para completar calificación
    Given que el usuario no completa la calificación
    When intenta cerrar la página
    Then el sistema le recuerda que debe completar la calificación más tarde.

    Examples:
      | Estado de Calificación |
      |------------------------|
      | Calificación pendiente |
      | No calificado          |

  Scenario: Calificación negativa con respuesta del cocinero
    Given que el usuario deja una calificación negativa
    When el cocinero revisa la calificación
    Then el sistema permite que el cocinero responda al comentario.

    Examples:
      | Calificación       | Comentario del Cocinero  |
      |--------------------|--------------------------|
      | 1 estrella         | Disculpas por el problema |
      | 2 estrellas        | Mejoraremos en el futuro  |
