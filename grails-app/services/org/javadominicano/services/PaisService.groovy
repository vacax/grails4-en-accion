package org.javadominicano.services

import grails.gorm.services.Service
import org.javadominicano.domains.Pais

@Service(Pais)
interface PaisService {

    Pais get(Serializable id)

    List<Pais> list(Map args)

    Long count()

    void delete(Serializable id)

    Pais save(Pais pais)

}