<%-- 
    Document   : index
    Created on : 01/09/2019, 13:08:12
    Author     : Edwalis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset=utf-8">
        <meta name="viewport" content="whidth=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <nav class="navbar navbar-light bg-light">
                <span class="navbar-brand mb-0 h1">Lista de Productos</span>
            </nav>
            <div class="row">
                <div class="col-sm-2"></div>  
                <div class="col-sm-8">  
                    <div class="panel panel-default">
                        <div class="panel-heading">Formulario</div>  
                        <div class="panel-body">
                            <form class="form-horizontal" action="procesar.jsp" method="get">
                                <div class="form-group"> 
                                    <label class="control-label col-sm-2">descripcion</label>  
                                    <div class="col-sm-8">
                                        <input name="descripcion" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2">Categoria</label>
                                    <div class="col-sm-8">
                                        <select name="categoria" class="form-control">
                                            <option value="1">Verduras</option>
                                            <option value="2">Frutas</option>
                                            <option value="3">Indumentaria</option>
                                            <option value="4">Carnes</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2">Precio</label>
                                    <div class="col-sm-8">
                                        <input name="precio" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">Enviar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Productos</div>
                        <div class="panel body">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Descripcion</th>
                                        <th scope="col">Categoria</th>
                                        <th scope="col">Precio</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Papa Blanca</td>
                                        <td>Verduras</td>
                                        <td>20.19</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Manzana Granny</td>
                                        <td>Frutas</td>
                                        <td>70.85</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Camisa 100% algodon talla M</td>
                                        <td>Indumentaria</td>
                                        <td>800.55</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">4</th>
                                        <td>Pollo entero 1era calidad</td>
                                        <td>Carnes</td>
                                        <td>90.32</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>    
    </body>
</html>
