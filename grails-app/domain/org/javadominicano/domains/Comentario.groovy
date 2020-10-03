package org.javadominicano.domains


class Comentario extends Base {

    String comentario
    int valoracion
    Playa playa;

    static constraints = {
        comentario(size: 5..200)
        valoracion(min: 0, max: 5)
    }
}
