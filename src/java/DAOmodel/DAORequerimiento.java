
package DAOmodel;

import Interfaces.Crud;
import java.util.List;
import java.util.*;
import java.sql.*;
import Model.Requerimiento;
import BdConexion.Conexion;

public class DAORequerimiento implements Crud{

    Conexion cn = new Conexion();  // obtiene credenciales de acceso a la BD
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
   
    
    @Override
    public List listar() {

      ArrayList<Requerimiento>list=new ArrayList();
      String sql = "select * from Requerimiento" ;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Requerimiento r = new Requerimiento();
                r.setId(rs.getInt("Id"));
                r.setDetalle(rs.getString("Detalle"));
                r.setEstado(rs.getString("estado"));
                r.setIdGerencia(rs.getInt("Gerencia"));
                r.setIdDepto(rs.getInt("Depto"));
                r.setIdResponsable(rs.getInt("Responsable"));
                r.setIdUsuario(rs.getInt("Usuario"));
                list.add(r);
            }
        } catch (Exception e) {
        }
        
        return list;
    } 
    
    
    @Override
    public String insertar(Object obj) {
        
//        Requerimiento r =(Requerimiento) obj;
//        Connection conn;
//        PreparedStatement pst;
//        String sql = "INSERT INTO requerimiento (id, detalle, estado, gerencia, depto, responsable, usuario) VALUES (NULL, 'Hola, requerimiento numero 3', 'Activo', '2', '3', '3', '2');";
//        String respuesta ="";
//        try {
//             con=db.getConnection();
//            pst=con.prepareStatement(sql);
//            pst.setString(2, r.getDetalle() );
//            pst.setString(0, r.getEstado());
//            pst.setInt(0, r.getIdGerencia());
//            pst.setInt(0, r.getIdResponsable());
//            pst.setInt(0, r.getIdUsuario());
//            pst.executeUpdate();
//            db.close();
//            
//        } catch (Exception e) {
//        }
        return null;
        
    }

    @Override
    public String eliminar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String modificar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Requerimiento> consultar() {
      
        return null;
    }

    
    
    
    
}
