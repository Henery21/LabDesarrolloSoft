<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Detalle Venta</title>
    </head>
    <body>
       <div class="container">
            <h1 class="mt-5">Gestión de Detalle Venta</h1>
            <h2>Listado de Detalle Venta</h2>
            <h3>Conexion: ${mensaje_conexion}</h3><br>

            <div>
                <button class="btn btn-primary mb-3" onclick="regresar()">Regresar</button>    
                <a class="btn btn-primary mb-3" href="/Tienda?accion=AgregarCargo">Agregar Detalle Venta</a><br><br>
            </div>
            <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>ID Detlle Venta</th>
                        <th>ID Venta</th>
                        <th>ID Carrito</th>
                        <th>ID Producto</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Total</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listaDetalleVenta}" var="item">
                        <tr>
                            <td><c:out value="${item.id_DetalleVenta}" /></td>
                            <td><c:out value="${item.id_Venta}" /></td>
                            <td><c:out value="${item.id_Carrito}" /></td>
                            <td><c:out value="${item.id_Producto}" /></td>
                            <td><c:out value="${item.cantidad}" /></td>
                            <td><c:out value="${item.precioUnitario}" /></td>
                            <td><c:out value="${item.total}" /></td>
                            <td class="text-center">
                                <form method="POST" action="/Tienda/OpcionesUsuario/Modificar/ModificarCargo.jsp">
                                    <input type="hidden" name="id_DetalleVenta" value="${item.id_DetalleVenta}" />
                                    <input type="hidden" name="id_Venta" value="${item.id_Venta}" />             
                                    <button type="submit" class="btn btn-warning">Modificar</button>
                                </form>    
                                <form method="POST" action="/Tienda/OpcionesUsuario/Eliminar/EliminarCargo.jsp">
                                    <input type="hidden" name="id_DetalleVenta" value="${item.id_DetalleVenta}" />
                                    <input type="hidden" name="id_Venta" value="${item.id_Venta}" />             
                                    <button type="submit" class="m-2 btn btn-danger">Eliminar</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>            
            </table>
        </div>
        <script>
            function regresar() {
                window.location.href = "index.html";
            }
        </script>
    </body>
</html>
