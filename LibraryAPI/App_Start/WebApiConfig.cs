using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace LibraryAPI
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            /* Requerimiento 4: Hacer uso de friendly routes*/
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            /*Mapea la ruta http api/{nombre del controlador}/{id}. Esta llama nuestro 
             metodo GetBook en BookController al utilizar api/book/2, por ejemplo.*/
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
            /*Mapea la ruta http api/book/{BookID}/Page/{PageID}/{Format}. Esta llama nuestro 
            metodo GetPage en PageController al utilizar api/book/1/page/2/text, por ejemplo.*/
            config.Routes.MapHttpRoute(
                name: "PageApi",
                routeTemplate: "api/book/{BookID}/Page/{PageID}/{Format}",
                defaults: new { controller="Page" }
            );
        }
    }
}
