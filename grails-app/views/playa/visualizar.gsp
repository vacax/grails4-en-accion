<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 2/10/20
  Time: 2:24 p. m.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<g:applyLayout name="template">
    <content tag="formulario">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="jumbotron jumbotron-fluid">
                        <div class="container">
                            <h1 class="display-4">${playa.nombre}</h1>
                            <p class="lead">Creado Por: ${playa.creadoPor}, Fecha: ${playa.dateCreated}</p>
                        </div>
                    </div>
                    <div class="card centered">
                        <div class="card-body">
                            <img src="${createLink(action: 'imagenPlaya', id: playa.id)}" alt="${playa.nombre}">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <h5 class="card-header"><g:message code="app.playa.comentario.form.titulo"/> </h5>
                        <g:form action="crearComentario">
                            <input type="hidden" name="playaId" value="${playa.id}">
                            <div class="form-group">
                                <label for="valoracionInput"><g:message code="app.playa.comentario.form.valoracion"/> </label>
                                <input type="range" name="valoracion" value="3" min="0" max="5" class="form-control-range" id="valoracionInput">
                            </div>
                            <div class="form-group">
                                <label for="comentarioInput"><g:message code="app.playa.comentario.form.comentario"/> </label>
                                <textarea class="form-control" name="comentario" id="comentarioInput" rows="3" required="required"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary"><g:message code="app.playa.comentario.form.crear"/></button>
                        </g:form>
                    </div>
                    <div class="card" >
                        <div class="card-header">
                            <g:message code="app.playa.comentario.listado"/>
                        </div>
                        <ul class="list-group list-group-flush">
                            <g:each in="${playa.comentarios}" var="comentario">
                                <div class="card">
                                    <div class="card-header">
                                        Creado Por: ${comentario.creadoPor} - Fecha: ${comentario.dateCreated}
                                    </div>
                                    <div class="card-body">
                                        <blockquote class="blockquote mb-0">
                                            <p>${comentario.comentario}</p>
                                            <footer class="blockquote-footer">Valoración: ${comentario.valoracion}</footer>
                                        </blockquote>
                                    </div>
                                </div>
                            </g:each>
                        </ul>
                    </div>
                </div>
            </div>
    </content>
</g:applyLayout>