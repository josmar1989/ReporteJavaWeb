/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author MAU-Pc
 */
public class Encargado {
    
    private int id;
    private String nombre;
    private int idasignado;

    public Encargado() {
    }

    public Encargado(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdasignado() {
        return idasignado;
    }

    public void setIdasignado(int idasignado) {
        this.idasignado = idasignado;
    }
    
    
    
}
