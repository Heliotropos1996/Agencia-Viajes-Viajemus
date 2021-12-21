package Logica;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;




@Entity
public class ServicioTuristico {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int codigo_servicio;

    @Basic
    private String nombre;
    private String descripción_breve;
    private String destino_servicio;
    private String fecha_servicio;
    private double costo_servicio;

  
 public ServicioTuristico() {
    }

    public ServicioTuristico(int codigo_servicio, String nombre, String descripción_breve, String destino_servicio, String fecha_servicio, double costo_servicio) {
        this.codigo_servicio = codigo_servicio;
        this.nombre = nombre;
        this.descripción_breve = descripción_breve;
        this.destino_servicio = destino_servicio;
        this.fecha_servicio = fecha_servicio;
        this.costo_servicio = costo_servicio;
        
    }

   


    public int getCodigo_servicio() {
        return codigo_servicio;
    }

    public void setCodigo_servicio(int codigo_servicio) {
        this.codigo_servicio = codigo_servicio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripción_breve() {
        return descripción_breve;
    }

    public void setDescripción_breve(String descripción_breve) {
        this.descripción_breve = descripción_breve;
    }

    public String getDestino_servicio() {
        return destino_servicio;
    }

    public void setDestino_servicio(String destino_servicio) {
        this.destino_servicio = destino_servicio;
    }

    public String getFecha_servicio() {
        return fecha_servicio;
    }

    public void setFecha_servicio(String fecha_servicio) {
        this.fecha_servicio = fecha_servicio;
    }

    public double getCosto_servicio() {
        return costo_servicio;
    }

    public void setCosto_servicio(double costo_servicio) {
        this.costo_servicio = costo_servicio;
    }

   
    
}
