package org.javadominicano.commands

import grails.validation.Validateable
import org.springframework.web.multipart.MultipartFile

/**
 *
 */
class FotoCommand implements Validateable{
    MultipartFile foto
    long id
    long paisId
    String nombre


    static constraints = {
        id nullable: false
        foto  validator: { val, obj ->
            if ( val == null ) {
                return false
            }
            if ( val.empty ) {
                return false
            }

            ['jpeg', 'jpg', 'png'].any { extension ->
                val.originalFilename?.toLowerCase()?.endsWith(extension)
            }
        }
    }
}
