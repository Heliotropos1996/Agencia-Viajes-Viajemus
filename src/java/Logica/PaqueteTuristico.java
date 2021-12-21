package Logica;

import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class PaqueteTuristico {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int codigo_paquete;

    @Basic

    private double costo_paquete;

    @ManyToMany
    private List<ServicioTuristico> servTuri;

    public PaqueteTuristico() {
    }

    public PaqueteTuristico(int codigo_paquete, double costo_paquete, List<ServicioTuristico> servTuri) {
        this.codigo_paquete = codigo_paquete;
        this.costo_paquete = costo_paquete;
        this.servTuri = servTuri;
    }

  

    

    public List<ServicioTuristico> getServTuri() {
        return servTuri;
    }

    public void setServTuri(List<ServicioTuristico> servTuri) {
        this.servTuri = servTuri;
    }

    public int getCodigo_paquete() {
        return codigo_paquete;
    }

    public void setCodigo_paquete(int codigo_paquete) {
        this.codigo_paquete = codigo_paquete;
    }

    public double getCosto_paquete() {
        return costo_paquete;
    }

    public void setCosto_paquete(double costo_paquete) {
        this.costo_paquete = costo_paquete;
    }

}
