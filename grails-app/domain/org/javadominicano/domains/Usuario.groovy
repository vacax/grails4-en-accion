package org.javadominicano.domains

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class Usuario implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    //Agregar nuevas propiedades de ser necesario.
    String telefono = "000-000-0000"
    String direccion = ".........."

    Set<Rol> getAuthorities() {
        (UsuarioRol.findAllByUsuario(this) as List<UsuarioRol>)*.rol as Set<Rol>
    }

    static constraints = {
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
    }

    static mapping = {
	    password column: '`password`'
    }
}
