package Model;

public class Responsable {
    
    private int id;
    private int nombre;
    private int idUnidad;

    public Responsable() {
    }

    public Responsable(int id, int nombre, int idUnidad) {
        this.id = id;
        this.nombre = nombre;
        this.idUnidad = idUnidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNombre() {
        return nombre;
    }

    public void setNombre(int nombre) {
        this.nombre = nombre;
    }

    public int getIdUnidad() {
        return idUnidad;
    }

    public void setIdUnidad(int idUnidad) {
        this.idUnidad = idUnidad;
    }
    
    
    
    
    
}
