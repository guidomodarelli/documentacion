# Google Dorks

Todos conocemos al buscador de Google, este buscador el cual nos conoce mas que nosotros mismos, el cual indexa millones de paginas por segundos y el cual es casi inevitable no usarlo.
Esta ves vamos a sacar provecho de su poderío y vamos a buscar cosas muy interesantes, que se encuentran en el inmenso mar de información de la internet.

Google Hacking es el nombre que recibe la técnica empleada para buscar información de forma avanzada, por medio de parámetros, operadores y signos que el buscador nos provee para filtrar cierta información.

## Palabras claves

Google nos provee de palabras claves para poder filtrar información y hacer de los resultados de nuestras búsquedas mas relevante.

| Google dork | Descripcion | Ejemplo |
| ----------- | ----------- | ------- |
| define:[termino] | Define un termino. | define:hacker |
| site:[url] | Busca en un dominio especifico. | site:www.sitioweb, site:gob.mx |
| filetype:[extensión] | Buscar archivos en un formato indicado. | filetype:pdf, filetype:doc |
| intitle:[termino]    | Buscar por el titulo de la pagina. | intitle:hacking |
| inurl:[termino]      | Buscar las palabras de la URL. | inurl:files |
| intext:"[termino]"   | Para buscar el termino introducido dentro del contenido web. | intext:"Hacking" |
| indexof:[termino]    | Buscar contenido en directorio de servidores. | |

## Ejemplos

### Buscando ficheros en sitios Web `*.gob`

Vamos a usar dos comandos para obtener ficheros PDF de paginas gubernamentales mexicanas, pues como saben los ficheros PDF con tienen metadatos, en los cuales podemos encontrar nombres de usarios entre otras cosas: `site:gob.mx filetype:pdf`
o tambien puedes hacer el intento con formatos docx, docm u otros.
Con herramientas como `mat` puedes extraer metadatos de estos ficheros.

### Encontrando directorio sensibles e interesantes en servidores Web

Luego esta el tema de encontrar directorios interesantes en servidores gov en esta ocasión servidores gob argentinos: `inurl:/files/ site:gob.ar`

### Encontrando Servidores Apache con el modulo server-status activado

`site:*/server-status intext:"Apache server status for"`

### Encontrando directorio sensibles usando el comando "`indexof`"

`indexof:admin/ site:gob.ec`

`indexof:users/ site:gob.ec`

### Usando el operador `OR` o " `|` " es usado para establecer mas comando en una sola linea.

`site:gob.mx ext:pdf | filetype:docx`

---

Para encontrar mas Google Dorks puedes consultar las siguientes paginas:
- [Google Hacking Database](https://www.exploit-db.com/google-hacking-database) (Recomendado)
- [Sitio Frances con Dorks actualizados](https://korben.info/google-dorks-2019-liste.html)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzNDgzODQ5NTMsODU2MzgyMzNdfQ==
-->