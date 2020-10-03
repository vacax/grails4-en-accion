package org.javadominicano.services

import grails.gorm.transactions.Transactional
import org.javadominicano.commands.ComentarioCommand
import org.javadominicano.commands.FotoCommand
import org.javadominicano.domains.Comentario
import org.javadominicano.domains.Pais
import org.javadominicano.domains.Playa

@Transactional
class PlayaService {

    /**
     *
     * @param cmd
     * @param usuario
     * @return
     */
    Playa crearActualizar(FotoCommand cmd, String usuario){
        Playa playa = Playa.get(cmd.id)
        if (!playa){
            playa =  new Playa()
            playa.creadoPor = usuario
        }
        playa.nombre = cmd.nombre
        if(cmd?.foto?.bytes) {
            playa.foto = cmd.foto.bytes
            playa.tipoImagen = cmd.foto.contentType
        }
        playa.pais = Pais.get(cmd.paisId)
        playa.modificadoPor = usuario
        playa.save(flush: true, failOnError:true)

        return playa
    }

    /**
     *
     * @param cmd
     * @param usuario
     * @return
     */
    Comentario crearComentario(ComentarioCommand cmd, String usuario){
        Comentario comentario = new Comentario(playa: Playa.get(cmd.playaId),
                comentario: cmd.comentario,
                valoracion: cmd.valoracion)
        comentario.creadoPor = comentario.modificadoPor = usuario
        comentario.save(failOnError:true)
        return comentario
    }
}
