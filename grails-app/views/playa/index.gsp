<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 2/10/20
  Time: 12:01 a. m.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<g:applyLayout name="template">
    <content tag="album">
        <section class="jumbotron text-center">
            <div class="container">
                <h1 style="font-size: 50px"><g:message message="app.titulo"/></h1>
                <p class="lead text-muted">
                    <g:message code="app.descripcion"/>
                </p>
                <sec:ifAnyGranted roles="ROLE_ADMIN">
                    <p>
                        <g:link class="btn btn-primary my-2" controller="playa" action="crearActualizar"><g:message code="app.nuevo.playa"/></g:link>
                    </p>
                </sec:ifAnyGranted>
            </div>
        </section>
        <div class="album py-5 bg-light">
            <div class="container">
                <div class="row">
                    <g:each in="${playas}" var="playa">
                        <div class="col-md-4">
                            <div class="card mb-4 shadow-sm">
                                <img src="${createLink(action: 'imagenPlaya', id: playa.id)}" width="100%" height="225" class="bd-placeholder-img card-img-top" width="100%" height="225"/>
                                %{--<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>--}%
                                <div class="card-body">
                                    <p class="card-text" style="font-weight: bold">${playa.nombre}</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <sec:ifAnyGranted roles="ROLE_ADMIN">
                                                <g:link class="btn btn-sm btn-outline-secondary" action="crearActualizar" params="[id: playa.id]">Editar</g:link>
                                            </sec:ifAnyGranted>
                                            <g:link class="btn btn-sm btn-outline-secondary" action="visualizar" params="[id: playa.id]">Visualizar</g:link>
                                        </div>
                                        <small class="text-muted">creado por: ${playa.creadoPor}</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </g:each>
                </div>
            </div>
        </div>
    </content>
</g:applyLayout>