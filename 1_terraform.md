# Terraform

- Open Source
- Creada por HashiCorp
- Desarrollada en Golang

## Cómo funciona?

- Funciona como un binario.
- Terraform interactua con las API de los cloud vendors (e.g. AWS, GCP, Azure, etc).
- También permite crear infrastructura en nubes privada como OpenStack.

## Caracteristicas

- Planes de ejecución: Mediante un comando se visualiza primero los recursos que se van a crear.
- Fácil de automatizar mediante parametros y herramientas de CI/CD.

## Creación y configuración: cuál es la diferencia?

- Herramientas como Ansible y Puppet permiten configurar (e.g. instalación de paquetes) PERO también crear infrastructura. Sin embargo, ese no es su enfoque por lo cuál se encuentran limitadas en dicho aspecto.
- La idea es complementar herramientas. Ejemplo: __Terraform__ para crear la infrastructura y __Ansible__ para manejar el estado y configuración de ésta.

Existen diferentes enfoques:

- Mutable vs Inmutable
- Declarativo (Terraform) vs Procedural (e.g. Ansible)