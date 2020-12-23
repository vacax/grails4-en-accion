package org.javadominicano.controllers

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class HolaMundoControllerSpec extends Specification implements ControllerUnitTest<HolaMundoController> {

    def setup() {
    }

    def cleanup() {
    }

    /**
     * Ejemplo de pruebas.
     */
    void "pruebaIndex"() {
        expect:"Hola Mundo"
        controller.index()
        assert response.text == "Hola Mundo en Grails :-D" //OK
    }

}
