package grails4.en.accion

class MiTagLib {
    static namespace = "mitag"
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    /**
     * Retorna el usuario conectado.
     */
    def fechaGeneracion={
        out << "Fecha última generación: "+new Date()
    }
}
