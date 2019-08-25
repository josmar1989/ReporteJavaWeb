package Interfaces;

import java.util.List;

public interface Crud {
    
    public String insertar (Object obj);
    public String eliminar (Object obj);
    public String modificar (Object obj);
    public List <?> consultar();
    public List listar();
    
}
