<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Lista videojuegos</title>
    </head>
    <body>
        
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Lista</th>
                        <th>Codigo</th>
                        <th>Titulo</th>
                        <th>Personaje</th>
                        <th>Director</th>
                        <th>Marca</th>
                        <th>Tipo consola</th>
                        <th>Acciones</th>
                    </tr>  
                </thead>
                <tbody>
                    <c:forEach var="ju" items="${juego}">
                    <tr>
                        <td>${ju.getId()}</td>
                        <td>${ju.getCodigo()}</td>
                        <td>${ju.getTitulo()}</td>
                        <td>${ju.getProtagonista()}</td>
                        <td>${ju.getDirector()}</td>
                        <td>${ju.getMarca()}</td>
                        <td>${ju.getConsola()}</td>
                        <td>
                            <a class="btn btn-warning">Editar</a>
                            <a class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr> 
                    </c:forEach>
                </tbody>
            </table> 
        </div>
       <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
        
    </body>
</html>

