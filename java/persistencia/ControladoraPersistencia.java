package persistencia;

import java.util.List;
import logica.Usuario;

public class ControladoraPersistencia {

    HorarioJpaController horaJPA = new HorarioJpaController();
    OdontologoJpaController ondotoJPA = new OdontologoJpaController();
    PacienteJpaController pacJPA = new PacienteJpaController();
    PersonaJpaController persJPA = new PersonaJpaController();
    ResponsableJpaController respJPA = new ResponsableJpaController();
    SecretarioJpaController secreJPA = new SecretarioJpaController();
    TurnoJpaController turnJPA = new TurnoJpaController();
    UsuarioJpaController usuJPA = new UsuarioJpaController();

    public ControladoraPersistencia() {
    }
    
        
    public void crearUsuario(Usuario usu) {
       usuJPA.create(usu);
    }

    public List<Usuario> traerUsuarios() {
        return usuJPA.findUsuarioEntities();
    }
}
