package Logica;

import Persistencia.ControladoraPersistencia;
import java.util.List;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearEmpleado(String nombre, String apellido, String direccion, String dni, String fecha_nac, String nacionalidad, String celular, String email, String cargo, Double sueldo, String nombreUsu, String contrasenia) {
        Empleado emple = new Empleado();
        Usuario usu = new Usuario();

        // asigno valores a empleado
        emple.setNombre(nombre);
        emple.setApellido(apellido);
        emple.setDirección(direccion);
        emple.setDni(dni);
        emple.setFecha_nac(fecha_nac);
        emple.setNacionalidad(nacionalidad);
        emple.setCelular(celular);
        emple.setEmail(email);
        emple.setCargo(cargo);
        emple.setSueldo(sueldo);

        //asigno valores a usuario
        usu.setNombreUsu(nombreUsu);
        usu.setContrasenia(contrasenia);

        //asigno usuario a empleado
        emple.setUsu(usu);

        controlPersis.crearEmpleado(emple, usu);
    }

    public void crearCliente(String nombre, String apellido, String direccion, String dni, String fecha_nac, String nacionalidad, String celular, String email) {
        
        Cliente cli = new Cliente();
   
        // asigno valores a cliente
        
        cli.setNombre(nombre);
        cli.setApellido(apellido);
        cli.setDirección(direccion);
        cli.setDni(dni);
        cli.setFecha_nac(fecha_nac);
        cli.setNacionalidad(nacionalidad);
        cli.setCelular(celular);
        cli.setEmail(email);

     
        controlPersis.crearCliente(cli);

    }

    public List<Cliente> traerClientes() {
        return controlPersis.traerClientes();
    }

    public List<Usuario> traerUsuarios() {
        return controlPersis.traerUsuarios();
    }

    public List<Empleado> traerEmpleados() {
        return controlPersis.traerEmpleados();
    }

    public void eliminarEmple(int id) {
        controlPersis.eliminarEmple(id);
    }

    public Empleado traerEmple(int id) {
        return controlPersis.traerEmple(id);
    }

    public void modificarEmpleado(Empleado emple) {
        controlPersis.modificarEmpleado(emple);
    }

    public Cliente traerCliente(Integer id) {
        return controlPersis.traeCliente(id);
    }

    public Usuario traerUsuario(int id) {
        return controlPersis.traeUsuario(id);
    }

    public void modificarUsuario(Usuario usu) {
        controlPersis.modificarUsuario(usu);
    }

    public void modificarCliente(Cliente cli) {
        controlPersis.modificarCliente(cli);
    }

    public void eliminarClie(int id_clie) {
        controlPersis.eliminarClie(id_clie);
    }

    public boolean verificarUsuario(String usuario, String contra) {
        List<Usuario> listaUsuarios = controlPersis.traerUsuarios();
        if (listaUsuarios != null) {
            for (Usuario usu : listaUsuarios) {
                if (usu.getNombreUsu().equals(usuario) && usu.getContrasenia().equals(contra)) {
                    return true;
                }
            }
        }
       
       
            return false; 
        
        }
   

    public void crearServicio(String nombre, String descrip, String destino, String fecha, double costo) {

        ServicioTuristico ser = new ServicioTuristico();

        ser.setNombre(nombre);
        ser.setDescripción_breve(descrip);
        ser.setDestino_servicio(destino);
        ser.setFecha_servicio(fecha);
        ser.setCosto_servicio(costo);

        controlPersis.crearServicio(ser);
    }

    public List<ServicioTuristico> traerServicios() {
        return controlPersis.traerServicios();

    }

    public ServicioTuristico traerServicio(int id) {
        return controlPersis.traerServicio(id);
    }

    public void modificarServicio(ServicioTuristico ser) {
        controlPersis.modificarServicio(ser);
    }

    public void eliminarServicio(int id) {
        controlPersis.eliminarServicio(id);
    }

    public void crearPaquete(List<ServicioTuristico> servicios, double costoPaquete) {
        PaqueteTuristico paquete = new PaqueteTuristico();

        paquete.setServTuri(servicios);
        double costoPaquetetot = costoPaquete - (costoPaquete * 0.1);
        paquete.setCosto_paquete(costoPaquetetot);

        controlPersis.crearPaquete(paquete);

    }

    public List<PaqueteTuristico> traerPaquetes() {
        return controlPersis.traerPaquetes();
    }

    public void eliminarPaquete(int id) {
        controlPersis.eliminarPaquete(id);
    }

    public void crearVentaSer(String fecha, String pago, int idSer, int idCli, int idEmp) {
        Ventas venSer = new Ventas();
        ServicioTuristico ser = traerServicio(idSer);
        Cliente cli = traerCliente(idCli);
        Empleado emp = traerEmple(idEmp);
        venSer.setFecha_venta(fecha);
        venSer.setMedio_pago(pago);
        venSer.setServicio(ser);
        venSer.setCli(cli);
        venSer.setEmple(emp);
        controlPersis.crearVenta(venSer);
    }
}
