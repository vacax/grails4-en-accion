package org.javadominicano.domains

class Playa extends Base{

    String nombre
    byte[] foto
    String tipoImagen
    Pais pais //referencia mucho a uno.
    static hasMany = [comentarios : Comentario] //referencia uno a muchos.


    static constraints = {
    }

    static mapping = {
        foto sqlType: 'longblob'
    }
}
