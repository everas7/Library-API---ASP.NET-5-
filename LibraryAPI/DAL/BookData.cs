using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using LibraryAPI.Models;
using System.Data;

namespace LibraryAPI.DAL
{
    public static class BookData
    {
        public static string SqlString = "Data Source= (local); Initial Catalog=LIBRARY_APP_V2; Integrated Security=true";

        //Obtiene un listado de los libros almacenados en tabla de SQL
        public static IEnumerable<Book> GetBooks()
        {
            //Conexión a SQL
            using (SqlConnection SqlCon = new SqlConnection(SqlString))
            {

                //Comando de SQL que llama el Stored Procedure GETBOOKLIST
                using (SqlCommand Command = new SqlCommand("GETBOOKLIST", SqlCon))
                {
                    //Asigna el tipo de comando Stored Procedure
                    Command.CommandType = CommandType.StoredProcedure;
                    
                    //Abre la conexión a SQL
                    SqlCon.Open();
                    
                    /* Ejecuta el reader de SQL y crea un listado de libros,
                     al cual le agrega un objeto tipo libro por cada lectura */
                    using (SqlDataReader Reader = Command.ExecuteReader())
                    {
                        var BookList = new List<Book>();
                        while(Reader.Read())
                        {
                            BookList.Add(new Book()
                            {
                                BookID=Reader.GetInt32(0),
                                Title=Reader.GetString(1),
                                Author=Reader.GetString(2)
                            });
                        }
                        // Cierra conexión a SQL
                        SqlCon.Close();

                        // Retorna el listado de libros
                        return BookList;
                    }
                }
            }
        }

        //Obtiene el libro almacenado en la tabla de SQL con el BookID indicado
        public static Book GetBook(int BookID)
        {
            //Conexión a SQL
            using (SqlConnection SqlCon = new SqlConnection(SqlString))
            {

                //Comando de SQL que llama el Stored Procedure GETBOOK
                using (SqlCommand Command = new SqlCommand("GETBOOK", SqlCon))
                {
                    //Asigna el tipo de comando Stored Procedure
                    Command.CommandType = CommandType.StoredProcedure;

                    //Envía el BookID como parámetro para el Stored Procedure
                    Command.Parameters.AddWithValue("BOOKID", BookID);

                    //Abre la conexión a SQL
                    SqlCon.Open();

                    /* Ejecuta el reader de SQL y crea objeto de tipo libro,
                       si logra leer algo de la consulta */
                    using (SqlDataReader Reader = Command.ExecuteReader())
                    {
                       
                        if (Reader.Read())
                        {
                            Book Book = new Book()
                            {
                                BookID = Reader.GetInt32(0),
                                Title = Reader.GetString(1),
                                Author = Reader.GetString(2)
                            };
                            // Cierra conexión a SQL
                            SqlCon.Close();
                            // Retorna el libro encontrado
                            return Book;
                        }
                        // Cierra conexión a SQL
                        SqlCon.Close();

                        // Retorna null en caso de no leer nada
                        return null;
                    }
                }
            }
        }
        
        

    }
}