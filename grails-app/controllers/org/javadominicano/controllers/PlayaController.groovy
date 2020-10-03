package org.javadominicano.controllers

import grails.plugin.springsecurity.annotation.Secured
import org.javadominicano.commands.ComentarioCommand
import org.javadominicano.commands.FotoCommand
import org.javadominicano.domains.Pais
import org.javadominicano.domains.Playa
import org.javadominicano.services.PlayaService

@Secured('IS_AUTHENTICATED_FULLY')
class PlayaController {

    PlayaService playaService


    /**
     * Por defecto viaja a vista ubicada en views/playa/index.gsp
     */
    def index() {
        [playas: Playa.list()]
    }

    @Secured('ROLE_ADMIN')
    def crearActualizar(long id){
        //Pasando el modelo a la vista
        [paises: Pais.list(), playa: Playa.get(id)]
    }

    /**
     *
     * @param cmd
     */
    @Secured('ROLE_ADMIN')
    def procesarFoto(FotoCommand cmd){
        log.info("Procesando la playa")
        playaService.crearActualizar(cmd, principal.username) //Es agregado automaticamente en el controlador.
        redirect(action: 'index')
    }

    /**
     *
     * @param id
     */
    @Secured('IS_AUTHENTICATED_FULLY')
    def visualizar(long id){
        Playa playa = Playa.get(id)
        if(!playa){
            redirect(action: 'index')
            return
        }
        //pasando el objeto a la vista.
        [playa: playa]
    }

    /**
     *
     * @param id
     * @return
     */
    @Secured('IS_AUTHENTICATED_FULLY')
    def imagenPlaya(long id){
        Playa playa = Playa.get(id)
        if(!playa){
            //sin la image.
            respond(status: 404)
            return
        }
        //
        render(file: playa.foto, contentType: playa.tipoImagen)
    }

    /**
     *
     * @param cmd
     * @return
     */
    @Secured(["ROLE_ADMIN", "ROLE_USUARIO"])
    def crearComentario(ComentarioCommand cmd){
        if(cmd.hasErrors()){
            flash.error = true;
            flash.mensaje = cmd.errors
            redirect(action: 'visualizar',params: [id: cmd.playaId] )
            return;
        }
        //
        playaService.crearComentario(cmd, principal.username)
        redirect(action: 'visualizar',params: [id: cmd.playaId])
    }

}
