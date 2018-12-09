using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryAPI.Models
{
    public class Page
    {
        // Identificador para la tabla
        public int ID { get; set; }

        // Identificador de cada página
        public int PageID { get; set; }

        // Foreign key de tabla Book
        public int BookID { get; set; }
        public Book Book { get; set; }

        // Encabezado de la página
        public string Header { get; set; }
        // Contenido de la página
        public string Content { get; set; }
    }
}