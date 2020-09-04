<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Registro alquiler</title>
    </head>
    <body>
            <div class="d-flex">
                <div class="col-sm-5">
                    <div class="card">
                        <form action="controlador" methodo="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Datos del cliente</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6     d-flex">
                                    <input type="text" name="cedulacliente" class="form-control" placeholder="Documento">
                                    <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">
                                </div>
                                <div class="col-sm-6">
                                <input type="text" name="nombrecliente" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Titulo videojuego</label>
                            </div>
                            <div class="form-group d-flex">
                               <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoproducto" class="form-control" placeholder="Nombre videojuego">
                                    <input type="submit" name="accion" value="buscar" class="btn btn-outline-info">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombrescliente" placeholder="datos producto" class="form-control">
                                </div> 
                            </div>
                            <div class="form-group d-flex">
                               <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" class="form-control" placeholder="$/.0.00">                   
                                </div>
                                <div class="col-sm-3">
                                <input type="number" name="cant" class="form-control">
                                </div> 
                                <div class="col-sm-3">
                                    <input type="text" name="stock" placeholder="stock" class="form-control">
                                </div> 
                            </div>
                            <div class="form-group">
                                <input type="submit" name="accion" value="Agregar" class="btn btn-outline-info">
                            </div>
                            <div class="form-group"></div>
                        </div>
                      </form>
                    </div> 
                </div>
                <div class="col-sm-7">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex col-sm-6 ml-auto">
                                 <label>N.Serie</label>      
                                <input type="text" name="Nserie" class="form-control">
                            </div>     
                        </div> 
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Titulo</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="card-footer">
                        <div>
                            <input type="submit" nombre="accion" value="Generar alquiler" class="btn btn-success">
                            <input type="submit" nombre="accion" value="cancelar" class="btn btn-danger">
                        </div>
                    </div>        
                </div>
            </div>
     
       <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
        
    </body>
</html>