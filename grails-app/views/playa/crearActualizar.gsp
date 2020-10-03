<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 2/10/20
  Time: 1:05 a. m.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<g:applyLayout name="template">
    <content tag="formulario">
        <div class="album py-5 bg-light">
            <div class="py-5 text-center">
                <h1 style="font-size: 50px"><g:message code="app.playa.crearactualizar"></g:message> </h1>
            </div>
            <div class="container">
                <div class="row">
                    <g:form action="procesarFoto" enctype='multipart/form-data'>
                        <g:if test="${playa}">
                            <input type="hidden" name="id" value="${playa.id}"/>
                        </g:if>
                        <div class="form-group">
                            <label for="nombreInput"><g:message code="app.playa.form.nombre"/></label>
                            <input type="text" name="nombre" class="form-control" id="nombreInput" required="required" value="${playa?.nombre}">
                        </div>
                        <div class="form-group">
                            <label for="paisInput"><g:message code="app.playa.form.pais"/></label>
                            <g:select class="form-control" id="paisInput" from="${paises}"
                                      noSelection="${[ '-1' : '<<Seleccionar un País>>']}"
                                      optionKey="id" optionValue="nombre" name="paisId" value="${playa?.pais?.id}"/>
                        </div>
                        <div class="form-group">
                            <label for="fotoInput"><g:message code="app.playa.form.foto"/></label>
                            <input type="file" name="foto" class="form-control-file" id="fotoInput" ${!playa?.id ? 'required="required"' : '' } >
                        </div>
                        <g:if test="${playa}">
                            <div id="caja-imagen">
                                <img src="${createLink(action: 'imagenPlaya', id: playa.id)}" alt="${playa.nombre}">
                            </div>
                        </g:if>
                        <button type="submit" class="btn btn-primary"><g:message code="app.playa.form.procesar"/></button>
                        <g:link action="index" class="btn btn-secondary"><g:message code="app.playa.form.cancelar"/></g:link>
                    </g:form>
                </div>
            </div>
        </div>
    </content>
</g:applyLayout>