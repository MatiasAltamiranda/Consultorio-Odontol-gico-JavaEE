package logica;

import java.util.List;
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

    public List<Usuario> traerUsuarios() {
       return controlPersis.traerUsuarios();
    }

    public void eliminarUsuario(int id) {
        controlPersis.eliminarUsuario(id);
    }

    public Usuario traerUsuario(int id) {
       return controlPersis.traerUsuario(id);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);
    }



}
