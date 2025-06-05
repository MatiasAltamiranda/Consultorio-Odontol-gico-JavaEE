<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp"%>
<%@ include file="components/bodyTop.jsp"%>

<div class="container">
    <h1 class="mb-4">Alta Odontólogo</h1>
    <div class="row">
        <div class="col">
            <form class="user mb-5">
                <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="dni"
                           placeholder="Ingrese el DNI">
                </div>
                <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="nombre"
                           placeholder="Ingrese el Nombre">
                </div>
                 <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="apellido"
                           placeholder="Ingrese el Apellido">
                </div>
                  <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="telefono"
                           placeholder="Ingrese el telefono">
                </div>
                 <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="direccion"
                           placeholder="Ingrese la dirección">
                </div>
                   <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="fechaNac"
                           placeholder="Ingrese la fecha de nacimiento">
                </div>
                   <div class="form-group mb-4">
                    <input type="text" class="form-control form-control-user" id="especialidad"
                           placeholder="Ingrese la especialidad">
                </div>
               
                <a href="login.html" class="btn btn-primary btn-user btn-block mt-5">
                   Crear Odontólogo
                </a>

            </form>
        </div>
    </div>

</div>

<%@ include file="components/bodyBottom.jsp"%>      