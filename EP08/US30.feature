Feature: Landing Page Responsive
  Como visitante de la plataforma quiero que el landing page sea responsive para que pueda acceder cómodamente desde cualquier dispositivo.

  Scenario: Acceso desde dispositivo móvil
    Given que el usuario accede al landing page desde un móvil
    When lo hace
    Then el sistema ajusta el contenido automáticamente para adaptarse a la pantalla.

    Examples:
      | Dispositivo         |
      |---------------------|
      | iPhone              |
      | Samsung Galaxy      |

  Scenario: Acceso desde tablet
    Given que el usuario utiliza una tablet
    When accede al landing page
    Then el sistema muestra el contenido de forma clara y accesible.

    Examples:
      | Dispositivo         |
      |---------------------|
      | iPad                |
      | Galaxy Tab          |

  Scenario: Reorganización del contenido en navegador de escritorio
    Given que el usuario cambia el tamaño de la ventana en un navegador de escritorio
    When lo hace
    Then el sistema reorganiza el contenido sin perder funcionalidad.

    Examples:
      | Navegador            |
      |----------------------|
      | Chrome               |
      | Firefox              |
