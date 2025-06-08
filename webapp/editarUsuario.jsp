<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp"%>
<%@ include file="components/bodyTop.jsp"%>

<div class="container">

    <div class="row" >
        <div class="col-3"></div>
        <div class="col-6">
            <h1 class="mb-4">Editar Usuario</h1>
            <p class="lead mb-5">Estas por modificar el usuario en el sistema</p>
            
            <% Usuario usu= (Usuario)request.getSession().getAttribute("usuEdit"); %>
            
            <form class="user mb-5" action="SvEditUsuarios" method="POST">
                <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="Usuario" name="Usuario"
                          value="<%= usu.getNombreUsuario() %>"/>
                </div>
                <div class="form-group mb-4">
                    <input type="password" class="form-control form-control-user" id="Contrasenia" name="Contrasenia"
                           value="<%= usu.getContrasenia()%>"/>
                </div>
                <div class="form-group mb-5">
                    <input type="text" class="form-control form-control-user" id="Rol" name="Rol"
                           value="<%= usu.getRol()%>"/>
                </div>

                <button class="btn btn-primary btn-user btn-block mt-5" type="submit">
                    Editar Usuario
                </button>

            </form> 
        </div>
        <div class="col-3"></div>
    </div>

</div>      
<br><br><br><br>

<%@ include file="components/bodyBottom.jsp"%>    