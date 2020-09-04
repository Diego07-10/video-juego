
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class juegoDao {
    
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    //variable metodo agregar.
    int r;
    
    //operaciones CRUD

     //listar juegos
    public List listar(){
       
        String sql="select * from juego";
        List<Juego>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Juego ju=new Juego();
                ju.setId(rs.getInt(1));
                ju.setCodigo(rs.getString(2));;
                ju.setTitulo(rs.getString(3));
                ju.setProtagonista(rs.getString(4));
                ju.setDirector(rs.getString(5));;
                ju.setMarca(rs.getString(6));
                ju.setConsola(rs.getString(7));
                ju.setCantidad(rs.getString(8));
                ju.setPrecio(rs.getString(9));
                lista.add(ju);
            }
        } catch (Exception e){
        }
        return lista;
    }
    ///agregar nuevo juego
     public int agregar(Juego ju){
          String sql="insert into juego (codigo, titulo, protagonista, director, marca, consola, cantidad, precio) values (?,?,?,?,?,?,?,?)";
          try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, ju.getCodigo());
            ps.setString(2, ju.getTitulo());
            ps.setString(3, ju.getProtagonista());
            ps.setString(4, ju.getDirector());
            ps.setString(5, ju.getMarca());
            ps.setString(6, ju.getConsola());
            ps.setString(7, ju.getCantidad());
            ps.setString(8, ju.getPrecio());
            ps.executeUpdate();
          } catch (Exception e) {
          }
          return r;
    }
    /*public Cliente listarId(int id){
        Cliente cli=new Cliente();
        String sql="select * fron cliente where id="+id;
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
    }*/
    /*public void delete(int id){
            String sql="delete from cliente where id="+id;
          try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
          } catch (Exception e) {
          }
            
    }*/
    
}
