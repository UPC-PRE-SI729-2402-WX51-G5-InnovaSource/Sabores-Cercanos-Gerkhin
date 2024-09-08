Feature: Creación de perfil de cocinero
  Como cocinero casero quiero crear un perfil que incluya mi historial culinario y certificaciones para atraer más clientes.

  Scenario: Subida de imagen y certificación al perfil
    Given que el cocinero sube una imagen de perfil y su certificación
    When se completa la subida
    Then el sistema actualiza el perfil con la nueva información.

    Examples:
      | Imagen Subida | Certificación Subida |
      |---------------|----------------------|
      | imagen1.jpg   | Certificación A      |
      | imagen2.jpg   | Certificación B      |

  Scenario: Falta de información en el perfil
    Given que el cocinero no sube la información completa
    When intenta publicar su perfil
    Then el sistema solicita los datos faltantes.

    Examples:
      | Dato Faltante       |
      |---------------------|
      | Certificación       |
      | Imagen de perfil    |

  Scenario: Visualización del perfil completo por los usuarios
    Given que el perfil está completo
    When los usuarios buscan cocineros
    Then el sistema muestra el perfil del cocinero con todos los datos.

    Examples:
      | Cocinero        | Perfil Completo |
      |-----------------|-----------------|
      | Juan Pérez      | Sí              |
      | Ana López       | Sí              |
