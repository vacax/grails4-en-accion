package grails4.en.accion

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "playa", action: 'index')
        "500"(view:'/error')
        "404"(view:'/notFound')

        //Definiendo los rutas para los servicios REST.
        /*"/api/pais"(resources: "pais")
        "/api/playa"(resources: "playa")
        "/api/comentario"(resources: "comentario")*/
    }
}
