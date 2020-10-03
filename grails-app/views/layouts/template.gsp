<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 2/10/20
  Time: 12:11 a. m.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS víá WebJar -->
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.2/dist/css/bootstrap.min.css">
    <title><g:layoutTitle default="App Grails"/></title>


    <style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }
    </style>
    %{-- Utilizando el Plugin de los Assets para el manejo de los css, js e imagenes--}%
    <link href="${assetPath(src: 'album.css')}"/>
    %{--<asset:stylesheet src="application.css"/>--}%

    %{-- Agregando cualquier elemento vía sitemesh--}%
    <g:layoutHead/>
</head>
<body>

<header>
    <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                    <h4 class="text-white"><g:message code="app.acercade"/></h4>
                    <p class="text-muted"><g:message code="app.descripcion"/></p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                    <h4 class="text-white"><g:message code="app.contacto"/></h4>
                    <ul class="list-unstyled">
                        <li><a href="https://twitter.com/ccamachog" target="_blank" class="text-white"><g:message code="app.seguir.twitter"/> </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container d-flex justify-content-between">
            <g:link controller="playa" action="index" class="navbar-brand d-flex align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="mr-2" viewBox="0 0 24 24" focusable="false"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
                <strong>Grails 4 en Acción </strong>
            </g:link>
            <form action="/logout" method="post">
                <button class="btn btn-link" type="submit"><sec:username/> - Logout</button>
            </form>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header>

<main role="main">

    <g:pageProperty name="page.album">

    </g:pageProperty>

    <g:pageProperty name="page.formulario">

    </g:pageProperty>



</main>

<footer class="text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>Proyecto Grails 4 en Acción - <mitag:fechaGeneracion/></p>
    </div>
</footer>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
%{--Desde el Webjar--}%
<script src="/webjars/bootstrap/4.5.2/dist/js/bootstrap.min.js" ></script>
</body>
</html>