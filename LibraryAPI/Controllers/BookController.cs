using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using LibraryAPI.DAL;
using LibraryAPI.Models;


namespace LibraryAPI.Controllers
{
    public class BookController : ApiController
    {
        /* Requerimiento 1: Ver Listado de Libros*/
        //GET: Provee el listado de libros almacenado en SQL. Formato XML
        [HttpGet]
        public IHttpActionResult GetBooks()
        {
            return Ok(BookData.GetBooks());
        }

        /* Requerimiento 2: Visualizar un libro*/
        //GET: Provee el listado el libro almacenado en SQL con el BookID indicado. Formato XML
        [HttpGet]
        public IHttpActionResult GetBookByID(int id)
        {
            Book Book = BookData.GetBook(id);
            //En caso de no encontrar un libro con dicho id, retorna un BadRequest
            if (Book == null)
                return BadRequest();
            return Ok(Book);
        }
    }
}
