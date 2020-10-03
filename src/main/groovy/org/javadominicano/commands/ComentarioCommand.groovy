package org.javadominicano.commands

import grails.validation.Validateable

class ComentarioCommand implements Validateable{

    long id
    long playaId
    String comentario
    int valoracion

    static constraints = {
        playaId(nullable: false)
        comentario(nullable: false)
        valoracion(min: 0, max: 5)
    }
}
