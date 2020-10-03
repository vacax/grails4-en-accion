package org.javadominicano.services

import grails.testing.gorm.DomainUnitTest
import org.javadominicano.domains.Base
import spock.lang.Specification

class BaseSpec extends Specification implements DomainUnitTest<Base> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
