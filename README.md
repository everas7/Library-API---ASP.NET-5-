# Library API en ASP.NET 5

## Overview
This is a Library REST API ASP.NET 5 without EntityFramework for database connection.

## Instrucciones para montar el proyecto:

1. Run the script "Library.sql" on a SQL Server instance.
2. Open the solution LibraryAPI.sln on Visual Studio.
3. Go to the DAL directory and inside the files BookData and PageData, modify the SqlString variable, using the values of your Sql instance.
4. Build -> Run Code Analysis on Solution
5. Build -> Rebuild Solution
6. Launch con IIS Express

## Testing the API
Sample routes:
* api/book/2/page/1/text
* api/book/2/page/1/html
