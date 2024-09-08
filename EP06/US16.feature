Feature: Publicación de menús
  Como cocinero casero quiero publicar menús diarios para que los clientes puedan elegir entre diferentes opciones de comida.

  Scenario: Publicación exitosa de menú
    Given que el cocinero carga un menú completo
    When completa todos los campos requeridos
    Then el sistema permite la publicación del menú.

    Examples:
      | Menú Publicado      |
      |---------------------|
      | Menú diario A       |
      | Menú diario B       |

  Scenario: Publicación fallida por datos incompletos
    Given que el cocinero intenta publicar un menú incompleto
    When intenta enviarlo
    Then el sistema muestra un mensaje de error indicando que faltan datos.

    Examples:
      | Campo Faltante      |
      |---------------------|
      | Precio              |
      | Descripción         |

  Scenario: Menú disponible para los usuarios
    Given que el menú es publicado
    When los usuarios buscan opciones de comida
    Then el sistema muestra el menú según las preferencias del usuario.

    Examples:
      | Menú Publicado     |
      |--------------------|
      | Menú vegano        |
      | Menú sin gluten    |
