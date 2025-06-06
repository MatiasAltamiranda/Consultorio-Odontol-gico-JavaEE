package logica;

import persistencia.ControladoraPersistencia;

public class ControladoraNegocio {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    
    public void crearUsuario(String usuario, String contrasenia, String rol) {
      Usuario usu = new Usuario();
      usu.setNombreUsuario(usuario);
      usu.setContrasenia(contrasenia);
      usu.setRol(rol);
      controlPersis.crearUsuario(usu);
    }



}
