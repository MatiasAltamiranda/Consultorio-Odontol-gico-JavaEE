<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp"%>
<%@ include file="components/bodyTop.jsp"%>

<div>

    <h1>Lista de usuarios</h1>
    <p>Visualiza todos los usuarios registrados</p>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Usuarios</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Rol</th>
                            <th style="width:210px">Acción</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Rol</th>
                            <th style="width:210px">Acción</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <%
                            List<Usuario> listaUsuarios =(List)request.getSession().getAttribute("listaUsuarios");
                            for(Usuario usu : listaUsuarios){
                        %>
                        <tr>
                            <td><%= usu.getId_usuario()%></td>
                            <td><%= usu.getNombreUsuario()%></td>
                            <td><%= usu.getRol()%></td>
                            <td style="display:flex;width: 230px">
                                <form name="editar" action="SvEditUsuarios" method="GET">
                                    <button type="submit" class="btn btn-info btn-user btn-block" style="margin-right: 5px">
                                        <i class="fas fa-pencil-alt"></i> Editar
                                    </button>
                                    <input type="hidden" name="id" value="<%= usu.getId_usuario()%>"/>
                                </form>
                                  <form name="eliminar" action="SvElimUsuarios" method="POST">
                                    <button type="submit" class="btn btn-outline-danger btn-user btn-block" style="margin-left: 5px">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value="<%= usu.getId_usuario()%>"/>
                                </form>
                            </td>
                        </tr>
                      <% };%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

</div>



<%@ include file="components/bodyBottom.jsp"%>   