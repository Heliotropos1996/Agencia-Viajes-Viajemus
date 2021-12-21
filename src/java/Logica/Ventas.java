package Logica;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity
public class Ventas implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    private int num_venta;
    @Basic
    private String fecha_venta;
    private String medio_pago;

    @ManyToOne
    private Cliente cli;
    @ManyToOne
    private PaqueteTuristico paquete;
    @ManyToOne
    private Empleado emple;
    @ManyToOne
    private ServicioTuristico servicio;

    public Ventas() {
    }

    public Ventas(int num_venta, String fecha_venta, String medio_pago, Cliente cli, PaqueteTuristico paquete, Empleado emple, ServicioTuristico servicio) {
        this.num_venta = num_venta;
        this.fecha_venta = fecha_venta;
        this.medio_pago = medio_pago;
        this.cli = cli;
        this.paquete = paquete;
        this.emple = emple;
        this.servicio = servicio;
    }

    public Ventas(int num_venta, String fecha_venta, String medio_pago, Cliente cli, Empleado emple, ServicioTuristico servicio) {
        this.num_venta = num_venta;
        this.fecha_venta = fecha_venta;
        this.medio_pago = medio_pago;
        this.cli = cli;
        this.emple = emple;
        this.servicio = servicio;
    }

    public PaqueteTuristico getPaquete() {
        return paquete;
    }

    public void setPaquete(PaqueteTuristico paquete) {
        this.paquete = paquete;
    }

    public ServicioTuristico getServicio() {
        return servicio;
    }

    public void setServicio(ServicioTuristico servicio) {
        this.servicio = servicio;
    }

   

    public int getNum_venta() {
        return num_venta;
    }

    public void setNum_venta(int num_venta) {
        this.num_venta = num_venta;
    }

    public String getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(String fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public String getMedio_pago() {
        return medio_pago;
    }

    public void setMedio_pago(String medio_pago) {
        this.medio_pago = medio_pago;
    }

    public Cliente getCli() {
        return cli;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }

    public Empleado getEmple() {
        return emple;
    }

    public void setEmple(Empleado emple) {
        this.emple = emple;
    }

}
