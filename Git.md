
# Git

## Comandos básicos

-   `git init` (Para inicializar un Proyecto Nuevo)
-   `git add <file>` (Para agregar un archivo al staging area)
-   `git add -A` (Pasa todos los archivos) 
-   `git commit` (Para crear un primer punto de control de nuestro código)
-   `git commit -m "comentario"` (Lo mismo que el commit regular, pero ahora no necesitas entrar a VIM)
-   `git commit --amend -m` (Arreglar el mensaje que colocamos al commit)
-   `git status` (Para ver el estado de nuestros archivos)
-   `git log` (Para ver todos los commits que hemos creado)
-   `git branch` (Ver las ramas que hay ("master" es la rama default))
-   `git branch "nombre"` (Crear una nueva rama)
-   `git branch -D` (Para borrar una rama que no usemos)
-   `git branch -a` (Nos muestra las ramas ocultas también)
-   `git checkout -- <file>` (Para revertir los cambios de los archivos)
-   `git checkout "nombre"` (Ir a una rama en específico)
-   `git checkout -b “nombre”` (Creas una nueva rama y además te para en ella)
-   `git diff <file>` (Para ver las diferencias hechas en los archivos)
-   `git reset` (Es similar a checkout a diferencia que este elimina los commits)
-   `git reset --soft` (No toca nuestro “Working Area”)
-   `git reset --mixed` (Borra el “Staging Area”, sin tocar el “Working Area”)
-   `git reset --hard` (Borra absolutamente todo lo que hay en el commit)
-   `git rebase` ([cambiar el mensaje de una rama en especifico](http://bit.ly/2EMsVTr))
    
## Fusiones

Es la creación de un nuevo commit juntando una rama con otra.
Primero nos situamos en la rama que va a absorber (git checkout)
Fusionar --> `git merge “rama”`
Existen dos tipos de fusiones:
-   ***Fast-forward***: simple y automático. Solo va a hacer la fusión, esto pasa normalmente cuando se trabaja con archivos diferentes o lineas de codigo distintas.
-   ***Manual merge***: Largo y manual. Antes de la fusión tiene que pasar por nosotros, normalmente ocurre cuando se trabaja en los mismo archivos o líneas de códigos.

# GitHub o GitLab

-   `git pull` (es una combinación de “git fetch” and “git merge”)
-   `git clone` (Hacerte una copia de los archivos que están en el server a tu PC)
-   `git remote add origin “link”` (vincula nuestro proyecto local, con nuestro proyecto remoto)
-   `git remote -v` (Para comprobar que se vincularon los proyectos)
-   `git remote remove origin` (Para eliminar el vínculo de los proyectos)
-   `git push` (Manda nuestros cambios (commits) al servidor remoto)
-   `git push origin “rama”` (para subir una rama en específico)
-   `git push origin “rama” -f` (para forzar la subida al servidor)
cuando nosotros conectamos el repositorio local con el repositorio remoto, hay una rama oculta y prácticamente es un espejo entre estos dos (Idéntico a master).

### Issues
Los issues son una forma de continuar, mejorar o solucionar un error en nuestros repositorios.

### Milestones
Son grupos de issues que aplican para un proyecto, característica o periodo de tiempo.

### Labels
Son una manera de organizar diferentes tipos de problemas.

### Tags
Los tags son simples puntos específicos en la historia de nuestro proyecto y se usan para marcar alguna versión del mismo.
Para asignar versiones a nuestros commits.

### Tags anotadas
Las tags anotadas son almacenadas como objetos completos dentro de la base de Git y contienen información.
	
	git tag -a v1.0 -m “mensaje”

Al agregar el código SHA podemos especificar dónde se va a aplicar una etiqueta.

### Tags ligeras

Las tags ligeras, son otra forma de crear tags, más simples y con poca información.

	git tag v1.0

### Compartiendo tags

	git push origin v#.#

`git push origin --tags` (Se encarga de subir todos los tags)

### Eliminando tags

	git tag -d v#.#

## Workflows
Los workflows son flujos de trabajo
-   Proyectos propios
-   Proyectos en equipos
-   Proyectos con terceros

### Proyectos propios
Somos los dueños, decidimos todo lo que pasa en el repositorio.

### Proyectos en equipo
Es parecido a trabajar solo, con la excepción de que habrá commits de nuestro equipo.

### Comandos
![](https://lh5.googleusercontent.com/yINwD11GDIfW4dumqJ5z--xVg4PXQ6M7j81mdPOe2sc6kkFEDq6GmZxB7saK38VW7yqOxJ6ry3hmqqpIBGSg-NjULdQfR1WxTU3-EcXZ0x7lUZ8jeY6HTOgZW1T_dGmY6T4yaQ68)
-   `git fetch origin` (Bajar los cambios que están en el repositorio remoto a origin/master «*la rama oculta entre el server y el local*»)
-   `git merge origin/master` (fusionar)

![](https://lh4.googleusercontent.com/EQobWaiN2Fv_AKhCbWc-L2-sugutC6OKq-PvlEqICs9RHXeDkrB9t8VrNFqbR5kzrNOgEn2mBFOImgyANGEo1ugoXKUrAPKNFU5jHoKF_IJh7nE8XNLQmrmyKpg-f2rHH9Ngrogz)
-   `git push origin master` (subir los cambios hechos)
-   Hay que actualizar el remote al de la organización

### Proyectos con terceros
Nosotros no somos dueños ni colaboradores, pero queremos participar en el proyecto.
-   fork (nos crea un repositorio clon del repositorio principal)
-   Hay una rama oculta más (upstream/master) pero deben de chequear con `git branch -a` (porque pueden crear diferentes ramas ocultas)
    

## Github Pages
Con Github pages podemos generar un sitio web a partir de nuestra organización o proyecto, muy útil para portafolios, blogs y todo tipo de páginas del lado del front-end (totalmente gratis)
-   Creamos un nuevo repositorio («nombre de nuestro usuario».github.io ó «nombre de la organizacion».github.io)

Sitios web para nuestros repositorios
-   Creamos una nueva rama (`git branch gh-pages`)
    

## Deployment

### Llave SSH

Nos sirve para conectarnos fácilmente a un servidor o servidores, sin tener que poner una contraseña en cada momento.

- Llave pública
- LLave privada

Para crear una llave usamos el siguiente comando: “`ssh-keygen`”

Para conectarnos al servidor “`ssh root@midominio.com`”

También tienen que crear una llave para su servidor “`ssh-keygen`”

# Configuraciones iniciales

- `git config -- global user.email «email»` (Para configurar email de este usuario)
- `git config -- global user.name «nombre»` (Para configurar nombre del usuario)

# Ignorar archivos

“`.gitignore`” Es un archivo reservado de git que sirve para ignorar ciertos archivos.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIxMjgxMDQ0NjldfQ==
-->