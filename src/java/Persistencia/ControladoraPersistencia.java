package Persistencia;

import Logica.Cliente;
import Logica.Empleado;
import Logica.PaqueteTuristico;
import Logica.ServicioTuristico;
import Logica.Usuario;
import Logica.Ventas;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ControladoraPersistencia {

    EmpleadoJpaController empleJPA = new EmpleadoJpaController();
    UsuarioJpaController1 usuJPA = new UsuarioJpaController1();
    ClienteJpaController cliJPA = new ClienteJpaController();
    ServicioTuristicoJpaController serJPA = new ServicioTuristicoJpaController();
    PaqueteTuristicoJpaController paqJPA = new PaqueteTuristicoJpaController();
    VentasJpaController venJPA = new VentasJpaController();
    public void crearEmpleado(Empleado emple, Usuario usu) {
        usuJPA.create(usu);
        empleJPA.create(emple);
    }

    public void crearCliente(Cliente cli, Usuario usu) {
        usuJPA.create(usu);
        cliJPA.create(cli);
    }

    public void modificarCliente(Cliente cli, Usuario usu) {
        try {
            usuJPA.edit(usu);
            cliJPA.edit(cli);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Cliente> traerClientes() {
        return cliJPA.findClienteEntities();
    }

    public List<Usuario> traerUsuarios() {
        return usuJPA.findUsuarioEntities();
    }

    public List<Empleado> traerEmpleados() {
        return empleJPA.findEmpleadoEntities();
    }

    public void eliminarEmple(int id) {
        try {
            empleJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Empleado traerEmple(int id) {
        return empleJPA.findEmpleado(id);
    }

    public void modificarEmpleado(Empleado emple) {
        try {
            empleJPA.edit(emple);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Cliente traeCliente(int id) {
        return cliJPA.findCliente(id);
    }

    public Usuario traeUsuario(int id) {
        return usuJPA.findUsuario(id);
    }

    public void modificarUsuario(Usuario usu) {
        try {
            usuJPA.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificarCliente(Cliente cli) {
        try {
            cliJPA.edit(cli);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminarClie(int id_clie) {
        try {
            cliJPA.destroy(id_clie);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearServicio(ServicioTuristico ser) {
        try {
            serJPA.create(ser);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<ServicioTuristico> traerServicios() {
        return serJPA.findServicioTuristicoEntities();
    }

    public ServicioTuristico traerServicio(int id) {
        return serJPA.findServicioTuristico(id);

    }

    public void modificarServicio(ServicioTuristico ser) {
        try {
            serJPA.edit(ser);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminarServicio(int id) {
        try {
            serJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearPaquete(PaqueteTuristico paquete) {
        try {
            paqJPA.create(paquete);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<PaqueteTuristico> traerPaquetes() {
        return paqJPA.findPaqueteTuristicoEntities();
    }

    public void eliminarPaquete(int id) {
        try {
            paqJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearVenta(Ventas venSer) {
        try {
            venJPA.create(venSer);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
