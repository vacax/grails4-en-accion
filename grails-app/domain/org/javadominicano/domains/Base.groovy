  package org.javadominicano.domains

class Base {

    Date dateCreated //valores completados de forma automatica
    Date lastUpdated //valores completados de forma automatica
    String creadoPor
    String modificadoPor

    static constraints = {
        creadoPor(nullable: true)
        modificadoPor(nullable: true)
    }

    static mapping = {
        //Se crea una tabla por cada subclase.
        tablePerHierarchy false
    }
}
