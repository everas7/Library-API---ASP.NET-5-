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
    public class PageController : ApiController
    {
        /* Requerimiento 3: Visualizar por página de un libro en el formato deseado*/
        /* GET: Provee el encabezado y contenido de la pagina almacenada en SQL con el BookID y PageID 
           en formato text o html, dependiendo del formato especificado en la ruta*/
        [HttpGet]
        public HttpResponseMessage GetPage(int BookID, int PageID, string Format)
        {
            Page Page = PageData.GetPage(BookID, PageID);
            //Si no encuentra nada en SQL devuelve BadRequest.
            if (Page == null)
                return new HttpResponseMessage(HttpStatusCode.BadRequest);
            
            var Response = new HttpResponseMessage(HttpStatusCode.OK);
            if (Format == "html")
            {
                /*En caso de especificar html, asigna al contenido del Response, 
                el encabezado y el contenido de la página con un formato html designado*/
                Response.Content = new StringContent("<h1>" + Page.Header + "</h1><p align=\"justify\">" +
                Page.Content + "</p>", System.Text.Encoding.UTF8, "text/html");
                return Response;
            }
            if (Format == "text")
            {
                /*En caso de especificar text, asigna al contenido del Response, 
                el encabezado y el contenido de la página con un formato plain text*/
                Response.Content = new StringContent(Page.Header + "\n" + Page.Content, System.Text.Encoding.UTF8, "text/plain");
                return Response;
            }
            //En caso no especificar formato.
            return new HttpResponseMessage(HttpStatusCode.Ambiguous);
        }
    }
}
