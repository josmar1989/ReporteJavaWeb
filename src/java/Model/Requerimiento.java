package Model;

public class Requerimiento {
    
    private int id;
    private String detalle;
    private String estado;
    private int idGerencia;
    private int idDepto;
    private int idResponsable;
    private int idUsuario;

    public Requerimiento() {
    }

    public Requerimiento(int id, String detalle, String estado, int idGerencia, int idDepto, int idResponsable, int idUsuario) {
        this.id = id;
        this.detalle = detalle;
        this.estado = estado;
        this.idGerencia = idGerencia;
        this.idDepto = idDepto;
        this.idResponsable = idResponsable;
        this.idUsuario = idUsuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getIdGerencia() {
        return idGerencia;
    }

    public void setIdGerencia(int idGerencia) {
        this.idGerencia = idGerencia;
    }

    public int getIdDepto() {
        return idDepto;
    }

    public void setIdDepto(int idDepto) {
        this.idDepto = idDepto;
    }

    public int getIdResponsable() {
        return idResponsable;
    }

    public void setIdResponsable(int idResponsable) {
        this.idResponsable = idResponsable;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
    
    
    
}
