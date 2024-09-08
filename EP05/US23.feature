Feature: Sistema de calificaciones
  Como cocinero casero quiero recibir calificaciones de mis clientes para mejorar la calidad de mis servicios.

  Scenario: Actualización de calificación
    Given que el cliente deja una calificación
    When la calificación es publicada
    Then el sistema actualiza la puntuación del cocinero.

    Examples:
      | Calificación       | Nueva Puntuación |
      |--------------------|------------------|
      | 5 estrellas        | 4.8              |
      | 4 estrellas        | 4.7              |

  Scenario: Respuesta a reseña negativa
    Given que el cliente deja una reseña negativa
    When el cocinero revisa la reseña
    Then el sistema permite al cocinero responder.

    Examples:
      | Reseña             | Respuesta del Cocinero |
      |--------------------|------------------------|
      | Mal servicio       | Lo siento, mejoraré    |
      | Comida fría        | Revisaré mi proceso    |

  Scenario: Promedio de calificaciones en el perfil
    Given que el cocinero tiene múltiples reseñas
    When un usuario visita su perfil
    Then el sistema muestra un promedio de las calificaciones.

    Examples:
      | Reseñas             | Promedio              |
      |---------------------|-----------------------|
      | 10 reseñas          | 4.5 estrellas         |
      | 15 reseñas          | 4.6 estrellas         |
