# Herramientas

## Packer

Packer es una herramienta para construir infraestructura inmutable desarrollada por HashiCorp que nos va a permitir crear __imágenes en cualquier proveedor de nube__.

__Elementos de Packer__
- `variables`: tal como su nombre lo indica, aquí definimos las variables que vamos a utilizar.
- `builders`: indicamos de donde vamos a construir nuestra imagen base.
- `provisioners`: acá personalizamos nuestra imagen, añadir paquetes, crear directorios, definir el estado de la infraestructura, etc.
- `post-processors`: podemos tener archivos de salida y ejecutar comandos después de haber creado la infraestructura, todo corre de manera local.

