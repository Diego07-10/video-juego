
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ClienteDao {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    //*variable metodo agregar.*//
    int r;
    
    public Cliente buscar(String cedula){
        Cliente c=new Cliente();
        String sql="Select * from cliente where cedula="+cedula;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                c.setId(rs.getInt(1));
                c.setCedula(rs.getString(2));;
                c.setNombre(rs.getString(3));
                c.setTelefono(rs.getString(4));
                c.setCorreo(rs.getString(5));;
                c.setEdad(rs.getString(6));
                c.setDireccion(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return c;
    }
    
    //*operaciones CRUD*//

    public List listar(){  
        String sql="select * from cliente";
        List<Cliente>lista= new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Cliente cl=new Cliente();
                cl.setId(rs.getInt(1));
                cl.setCedula(rs.getString(2));;
                cl.setNombre(rs.getString(3));
                cl.setTelefono(rs.getString(4));
                cl.setCorreo(rs.getString(5));;
                cl.setEdad(rs.getString(6));
                cl.setDireccion(rs.getString(7));
                lista.add(cl);
            }
        } catch (Exception e){
        }
        return lista;
    }
    
     public int agregar(Cliente cl){
          String sql="insert into cliente(cedula, nombre, telefono, correo, edad, direccion) values (?,?,?,?,?,?)";
          try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, cl.getCedula());
            ps.setString(2, cl.getNombre());
            ps.setString(3, cl.getTelefono());
            ps.setString(4, cl.getCorreo());
            ps.setString(5, cl.getEdad());
            ps.setString(6, cl.getDireccion());
            ps.executeUpdate();
          } catch (Exception e) {
          }
          return r;
    }
  /*  public Cliente listarId(int id){
        Cliente cli=new Cliente();
        String sql="select * from cliente where id="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                cli.setCedula(rs.getString(2));
                cli.setNombre(rs.getString(3));
                cli.setTelefono(rs.getString(4));
                cli.setCorreo(rs.getString(5));
                cli.setEdad(rs.getString(6));
                cli.setDireccion(rs.getString(7));
            }
        } catch (Exception e){
        }
        return cli;
    }
    public int actualizar(Cliente us){
            String sql="update cliente set cedula=?, nombre=?, telefono=?, correo=?, edad=?, direccion=? where id=?";
          try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, us.getCedula());
            ps.setString(2, us.getNombre());
            ps.setString(3, us.getTelefono());
            ps.setString(4, us.getCorreo());
            ps.setString(5, us.getEdad());
            ps.setString(6, us.getDireccion());
            ps.setInt(7, us.getId());
            ps.executeUpdate();
          } catch (Exception e) {
          }
          return r;
    }
    public void delete(int id){
           String sql="delete from cliente where id="+id;
          try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
          } catch (Exception e) {
          }
            
    }*/

   /* public void agregar(Cliente c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }*/
}
