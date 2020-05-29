# Library API en ASP.NET 5

## Descripcion
Library REST API ASP.NET 5 (Sin uso de Entity Framework)

## Instrucciones para montar el proyecto:

1- Correr Script Library.sql en una instancia de SQL.
2- Abrir archivo LibraryAPI.sln con Visual Studio.
3- En VS ir a carpeta DAL y dentro de los archivos BookData y PageData modificar el string SqlString colocando los datos de su instancia de SQL a utilizar.
4- Build -> Run Code Analysis on Solution
5- Build -> Rebuild Solution
6- Launch con IIS Express

## Probando el API
Rutas de ejemplo:
* api/book/2/page/1/text
* api/book/2/page/1/html
