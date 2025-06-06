<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp"%>
<%@ include file="components/bodyTop.jsp"%>

<div class="container">

    <div class="row" >
        <div class="col-3"></div>
        <div class="col-6">
            <h1 class="mb-4">Alta Usuario</h1>
            <p class="lead mb-5">Estas por crear un nuevo usuario en el sistema</p>
            <form class="user mb-5" action="SvUsuarios" method="POST">
                <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="Usuario" name="Usuario"
                           placeholder="Ingrese el nombre de usuario">
                </div>
                <div class="form-group mb-4">
                    <input type="password" class="form-control form-control-user" id="Contrasenia" name="Contrasenia"
                           placeholder="Ingrese la contraseña">
                </div>
                <div class="form-group mb-5">
                    <input type="text" class="form-control form-control-user" id="Rol" name="Rol"
                           placeholder="Ingrese el Rol">
                </div>

                <button class="btn btn-primary btn-user btn-block mt-5" type="submit">
                    Crear Usuario
                </button>

            </form> 
        </div>
        <div class="col-3"></div>
    </div>

</div>      
<br><br><br><br>

<%@ include file="components/bodyBottom.jsp"%>    