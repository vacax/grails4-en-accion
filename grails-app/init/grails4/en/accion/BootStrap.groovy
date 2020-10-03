package grails4.en.accion

import grails.gorm.transactions.Transactional
import grails.util.Environment
import org.javadominicano.domains.Pais
import org.javadominicano.domains.Rol
import org.javadominicano.domains.Usuario
import org.javadominicano.domains.UsuarioRol

class BootStrap {

    Environment environment = Environment.current;

    def init = { servletContext ->

        log.info("Iniciando la Aplicacición en Grails 4")
        //if(environment ==Environment.DEVELOPMENT){
            log.info("Modo desarrollo")
            //Añadiendo los paises por defecto.
            new Pais(nombre: "República Dominicana", creadoPor: 'admin', modificadoPor: 'admin').save(failOnError: true)
            //Añadiendo
            addUsuariosAdmin()
        //}
    }
    def destroy = {
        log.info("Cerrando la Applicación")
    }

    @Transactional
    void addUsuariosAdmin() {
        //
        def adminRole = new Rol(authority: 'ROLE_ADMIN').save(failOnError: true)
        def usuarioRol = new Rol(authority: 'ROLE_USUARIO').save(failOnError: true)
        def admin = new Usuario(username: 'admin', password: 'admin').save(failOnError: true)
        def usuario = new Usuario(username: 'usuario', password: 'usuario').save(failOnError: true)

        UsuarioRol.create(admin, adminRole)
        UsuarioRol.create(usuario, usuarioRol)

        UsuarioRol.withSession {
            it.flush()
            it.clear()
        }

        assert Usuario.count() == 2
        assert Rol.count() == 2
        assert UsuarioRol.count() == 2
    }
}
