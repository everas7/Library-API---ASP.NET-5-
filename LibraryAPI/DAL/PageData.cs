using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LibraryAPI.Models;
using System.Data;
using System.Data.SqlClient;

namespace LibraryAPI.DAL
{
    public class PageData
    {
        public static string SqlString = @"Data Source= (local); Initial Catalog=LIBRARY_APP_V2; Integrated Security=true";

        //Obtiene la pagina almacenado en la tabla de SQL con el BookID y PageID indicado
        public static Page GetPage(int BookID, int PageID)
        {
            //Conexión a SQL
            using (SqlConnection SqlCon = new SqlConnection(SqlString))
            {

                //Comando de SQL que llama el Stored Procedure GETPAGE
                using (SqlCommand Command = new SqlCommand("GETPAGE", SqlCon))
                {
                    //Asigna el tipo de comando Stored Procedure
                    Command.CommandType = CommandType.StoredProcedure;

                    //Envía el BookID como parámetro para el Stored Procedure
                    Command.Parameters.AddWithValue("BOOKID", BookID);
                    //Envía el PageID como parámetro para el Stored Procedure
                    Command.Parameters.AddWithValue("PAGEID", PageID);

                    //Abre la conexión a SQL
                    SqlCon.Open();

                    /* Ejecuta el reader de SQL y crea objeto de tipo pagina,
                       si logra leer algo de la consulta */
                    using (SqlDataReader Reader = Command.ExecuteReader())
                    {

                        if (Reader.Read())
                        {
                            Page Page = new Page()
                            {
                                ID = Reader.GetInt32(0),
                                PageID = Reader.GetInt32(1),
                                BookID = Reader.GetInt32(2),
                                Header = Reader.GetString(3),
                                Content = Reader.GetString(4)
                            };
                            // Cierra conexión a SQL
                            SqlCon.Close();
                            // Retorna la página encontrado
                            return Page;
                        }
                        // Cierra conexión a SQL
                        SqlCon.Close();

                        // Retorna null en caso de no leer nada
                        return null;
                    }
                }
            }
        }

        //Obtiene un listado de las paginas almacenadas en tabla de SQL para un libro en específico
        public static IEnumerable<Page> GetPages(int BookID)
        {
            //Conexión a SQL
            using (SqlConnection SqlCon = new SqlConnection(SqlString))
            {

                //Comando de SQL que llama el Stored Procedure GETPAGELIST
                using (SqlCommand Command = new SqlCommand("GETPAGELIST", SqlCon))
                {
                    //Asigna el tipo de comando Stored Procedure
                    Command.CommandType = CommandType.StoredProcedure;

                    //Envía el BookID como parámetro para el Stored Procedure
                    Command.Parameters.AddWithValue("BOOKID", BookID);

                    //Abre la conexión a SQL
                    SqlCon.Open();

                    /* Ejecuta el reader de SQL y crea un listado de páginas,
                     al cual le agrega un objeto tipo página por cada lectura */
                    using (SqlDataReader Reader = Command.ExecuteReader())
                    {
                        var PageList = new List<Page>();
                        while (Reader.Read())
                        {
                            PageList.Add(new Page()
                            {
                                ID = Reader.GetInt32(0),
                                PageID = Reader.GetInt32(1),
                                BookID = Reader.GetInt32(2),
                                Header = Reader.GetString(3),
                                Content = Reader.GetString(4)
                            });
                        }
                        // Cierra conexión a SQL
                        SqlCon.Close();

                        // Retorna el listado de páginas
                        return PageList;
                    }
                }
            }
        }
    }
}
