# Terraform

## Infrastructura como Código

La infrastructura como codigo es un enfoque para la automatización de la infrastructura utilizando principios del desarrollo de software.

- Facilmente reproducible
- Desechables
- Consistentes
- Repetibles

Las prácticas generales:

- Archivos declarativos o imperativos para definir la infrastructura
- Autodocumentado: Para hacerlo reutilizable
- Versionamiento
- Cambios pequeños: Práctica de metodologias agiles para no generar mucho impacto

## Herramientas en IaC

### Herramientas de definición

Permiten definir que recursos deben crearse y como deben configurarse (e.g. maquinas virtuales, bases de datos, SaaS, networking, etc).

Todas las herramientas cuentan con archivos de configuración por medio del cual se define la infrastructura.

- Terraform
- Cloudformation (AWS)
- Open Stack Heat

### Herramientas de configuración de servidores

Permiten configurar los servidores con el estado deseado en la capa de la plataform (e.g. dependencias, paquetes, directorios, permisos, etc).

__Aprovisionamiento__: Proceso que lleva a un recurso a estar listo para su uso.

- Plantillas (e.g. AWS AMI (Amazon Machine Image)): Snapshots para formar plantillas.
- Archivos de configuración/bootstrapping con comandos
- Registro central

A tener en cuenta cuando se elige una herramientas para IaC:

- Sin intervención humana para el aprovisionamiento y configuración
- __Idempotencia:__ Repetible. No debe crear la infrastructura si está ya existe.
- Parametrizable

Objetivos de la Iac:

- Aprovisionamiento bajo demanda
- Aplicar la misma configuración a un conjunto de recursos de manera fácil
- No hay intervención humana

Ejemplos

- Ansible
- Chef 
- Puppet

__Capas__

- Aplicación y datos
- Dependencias
- Infrastructura

Configuraciones por cada tipo de ambiente (DEV/QA/PROD) por medio de parametros enviados al archivo de configuración.

## Beneficios de la IaC

- Creación rápida bajo demanda.
- Automatización.
- Visibilidad y trazabilidad, todos los cambios quedan registrados.
- Ambientes homogéneos, una misma definición permite crear varios ambientes.
- Fácil de testear : [Testing Terraform](https://www.terraform.io/docs/extend/testing/unit-testing.html)
