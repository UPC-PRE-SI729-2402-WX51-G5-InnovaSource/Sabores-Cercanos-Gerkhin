Feature: Reporte de ventas
  Como cocinero casero quiero recibir un reporte semanal de ventas para poder analizar mi desempeño y ajustar mis precios.

  Scenario: Generación de reporte semanal de ventas
    Given que el cocinero ha realizado ventas
    When llega el fin de semana
    Then el sistema genera un reporte detallado de sus ingresos.

    Examples:
      | Ventas Realizadas | Ingresos Totales |
      |-------------------|------------------|
      | 10                | $500             |
      | 15                | $750             |

  Scenario: Reporte sin ventas en la semana
    Given que el cocinero no ha realizado ventas
    When revisa su reporte
    Then el sistema indica que no hubo ingresos.

    Examples:
      | Ventas Realizadas | Ingresos Totales |
      |-------------------|------------------|
      | 0                 | $0               |

  Scenario: Análisis más profundo de ventas
    Given que el cocinero quiere un análisis más detallado
    When accede al reporte
    Then el sistema le permite ver gráficos de su desempeño.

    Examples:
      | Ventas Realizadas | Gráfico Generado |
      |-------------------|------------------|
      | 20                | Sí               |
      | 25                | Sí               |
