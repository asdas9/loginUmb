/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author goku9
 */
public class ClienteDAO implements Validar {
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    @Override
    public int validar(Cliente cliente) {
        String sql="Select * from cliente where usuario=? and contra=?";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/umb","root","asdas");
            ps=con.prepareStatement(sql);
            ps.setString(1, cliente.getUsuario());
            ps.setString(2, cliente.getContra());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                cliente.setNombre(rs.getString("nombre"));
                cliente.setEmail(rs.getString("email"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        } catch (ClassNotFoundException |SQLException e) {
            return 0;
        }
       
    }
    
    
}
