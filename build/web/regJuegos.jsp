<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>videojuegos</title>
    </head>
    <body>
        <div class="card col-sm-6">
            <div class="card-body">
                <form action="controlador?menu=regJuegos" method="POST">
                    <div class="form-group">
                        <label>Codigo</label>
                        <input type="text"  name="txtcod" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Titulo</label>
                        <input type="text" name="txttit" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Personaje</label>
                        <input type="text" name="txtpro" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Director</label>
                        <input type="text" name="txtdir" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Marca</label>
                        <input type="text" name="txtmar" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Tipo consola</label>
                        <input type="text" name="txtcon" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Cantidad</label>
                        <input type="text" name="txtcan" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Precio</label>
                        <input type="number" name="txtpre" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                </form>
            </div>
            
        </div>
       <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
        
    </body>
</html>
