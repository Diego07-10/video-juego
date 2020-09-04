

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-light dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         clientes
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="controlador?menu=regClientes" target="myFrame">Nuevo cliente</a>
                        <a class="dropdown-item" href="controlador?menu=listaClientes&accion=Listar" target="myFrame">Registro de clientes</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-light dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         Videojuegos
                        </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                         <a class="dropdown-item" href="controlador?menu=regJuegos" target="myFrame">Registro de videojuegos</a>
                         <a class="dropdown-item" href="controlador?menu=lisJuegos&accion=Listar" target="myFrame">Lista de videojuegos</a>
                    <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="controlador?menu=infJuegos" target="myFrame">Estadisticas de videojuegos</a>
                    </div>
                  </li>
                  <li class="nav-item">
                         <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="controlador?menu=regAlquiler" target="myFrame">Registro de alquiler</a>
                  </li>
                   <li class="nav-item dropdown">
                        <a style="margin-left: 10px; border: none" class="btn btn-outline-light dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         Consultas
                        </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                         <a class="dropdown-item" href="controlador?menu=consultas" target="myFrame">director de videojuegos</a>
                         <a class="dropdown-item" href="controlador?menu=conTitulo" target="myFrame">Protagonista de video juegos</a>
                         <a class="dropdown-item" href="controlador?menu=conMarca" target="myFrame">Productor/marca de video juegos</a>
                    </div>
                  </li>
                   <li class="nav-item">
                       <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="controlador?menu=ventas" target="myFrame">Ventas</a>
                    </li>
                </ul>
            </div>
            <div style="margin-right: 150px" class="btn-group">
                <button type="button" class="btn btn-secondary">Administrador</button>
                <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 <span class="sr-only">Toggle Dropdown</span>
                 </button>
            <div class="dropdown-menu text-center">
                <a class="dropdown-item" href="#">
                    <img src="img/icono.jpg"  width="60"/>
                </a>
                <a class="dropdown-item" href="#">
                    ${usuario.getUsuario()}
                </a>
            <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Consultas de clientes</a>
            <form action="validar" method="POST">
                <button name="accion" value="Salir" class="dropdown-item">Salir</button>
            </form>
            </div>
            </div>
        </nav>
        <div class="m-4" style="height: 780px;">
                    <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>     
        </div> 
                
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
