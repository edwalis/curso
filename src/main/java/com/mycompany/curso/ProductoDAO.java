
package com.mycompany.curso;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
      
public class ProductoDAO {
    
    public static void inserta (Producto p) throws Exception {
        Connection con = AdministradorDeConexiones.obtenerConexion();
        String Sql= "INSERT INTO productos (descripcion, categoria, precio) VALUES ('" + p.getDescripcion()
                +"','" + p.getCategoria()+"','"+p.getPrecio()+")";
        Statement st = con.createStatement();
        st.execute(Sql);
        st.close();
        con.close();
    
    }
    
    public static void modifica (Producto p) throws Exception {
        Connection con = AdministradorDeConexiones.obtenerConexion();
        String Sql= "UPDATE productos  SET descripcion ='"+ p.getDescripcion()+"',categoria='" + p.getCategoria()
                +"', precio=" + p.getPrecio()+ "WHERE Id = "+p.getId();
        Statement st = con.createStatement();
        st.execute(Sql);
        st.close();
        con.close();
         }
        
    public static void elimina (int id) throws Exception {
        Connection con = AdministradorDeConexiones.obtenerConexion();
        String sql = "DELETE FROM productos WHERE id = " + id;
        Statement st = con.createStatement();
        st.execute(sql);
        st.close();
        con.close();
        }
    
    public static Producto getProducto (int idProducto) throws Exception {
        Connection con = AdministradorDeConexiones.obtenerConexion();
        String sql = "DELETE FROM productos WHERE id = " + idProducto;
        Statement st = con.createStatement();
        ResultSet rs =  st.executeQuery(sql);
        Producto p = new Producto ();
        if (rs.next()) {
            int id = rs.getInt("id");
            String descripcion = rs.getString("descripcion");
            int categoria = rs.getInt("categoria");
            double precio = rs.getDouble("precio");
            
            p.setPrecio(precio);
            p.setId(id);
            p.setDescripcion(descripcion);
            p.setCategoria(categoria);
        }
        st.close();
        con.close();
        return p;
        
        }
}
