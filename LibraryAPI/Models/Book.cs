using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryAPI.Models
{
    public class Book
    {
        // Identificador de cada libro y la tabla
        public int BookID { get; set; }

        // Titulo del libro
        public string Title { get; set; }

        // Autor del libro
        public string Author { get; set; }

        // Listado de páginas de libro
        public IEnumerable<Page> Pages { get; set; }
    }
}