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

## Archivos de configurations

- El archivo NO necesariamente debe llamarse `main.tf`, puede llamarse de cualquier forma siempre y cuando tenga la extensión `.tf`.
- Lenguaje es HCL (Hashicorp Configuration Language)

Inicializa y descarga los plugins necesarios acorde a los providers en el archivo/s de configuración de terraform.
```
terraform init
```

Para visualizar que recursos voy a crear:
```
terraform plan
```

Para explorar demás cloud providers/vendors soporta Terraform: https://registry.terraform.io/browse/providers

## Variables

- Permite usar `string`, `number`, listas, y maps.
- Terraform interpreta el tipo de la variable, por lo que no es necesario hacerla explicita.
- Las variables pueden ser declaradas en el mismo archivo donde están los `resources` pero pueden ir también en su propio archivo `.tf` e.g. `vars.tf` siempre y cuando este en el mismo directorio.
- Para asignarles valores a las variables hay 3 opciones:
    - Archivo `.tfvars` e.g. `dev.tfvars`
    - Variables de entorno
    - Online, con el CLI

Para inyectar el archivo con los valores de las variables
```
terraform plan -var-file dev.tfvars
terraform apply -var-file dev.tfvars
```

Para que no nos pida aprobación manual:
```
terraform apply -var-file dev.tfvars -auto-approve
```

Para destruir la infrastructura:
```
terraform destroy -auto-approve
```

Si nombramos nuestro archivo de variables .auto.tfvars ya no será necesario pasarle el parametro -var-file

## Interpolación, ciclos y condiciones

Use `dynamic` to add multiple parts of the same.

## Estado de la infrastructura

- Terraform sabe que infrastructura crea usando un archivo de estado `.tfstate`.
- Este se puede manejar de forma local o remota.
- Si se hacen uso de credentials, también las almacena.

### Backends
 
- Permite almacenar el estado de forma remota.
- Terraform soporta varios servicios de almacenamiento en la nube e.g. S3.
- Es más fácil trabajar en equipo (archivo centralizado) o cuando se hace CI
- Mayor disponibilidad.
- Para configurar el backend, debe ejecutarse `terraform init`
- Es importante versionar el archivo de estado, por ejemplo, habilitando el versionamiento en el bucket de S3.

https://www.terraform.io/language/settings/backends/configuration

## Modulos

- Way of reusing the resources.

## Modulos remotos

- Can have terraform modules remotely e.g. in github
- Terraform will bring the modules locally
