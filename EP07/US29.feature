Feature: Función de encuestas a clientes
  Como cocinero casero quiero enviar encuestas a los clientes después de cada pedido para recibir feedback sobre la calidad de la comida y el servicio.

  Scenario: Envío de encuesta después de pedido
    Given que el cocinero envía una encuesta
    When el cliente la recibe
    Then el sistema permite calificar el servicio en una escala del 1 al 5.

    Examples:
      | Calificación        |
      |---------------------|
      | 5 estrellas         |
      | 4 estrellas         |

  Scenario: Resumen de resultados de encuesta
    Given que el cliente completa la encuesta
    When lo hace
    Then el sistema notifica al cocinero con un resumen de los resultados.

    Examples:
      | Resumen             |
      |---------------------|
      | Muy satisfecho      |
      | Satisfecho          |

  Scenario: Análisis estadístico de respuestas a encuestas
    Given que el cocinero tiene múltiples respuestas a encuestas
    When revisa los resultados
    Then el sistema genera un informe con análisis estadísticos.

    Examples:
      | Informe Generado    |
      |---------------------|
      | Sí                  |
      | Sí                  |
