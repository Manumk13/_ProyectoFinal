/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.filtroconsolas;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author cice
 */
public class FiltroConsolas extends GestorBBDD {
  public FiltroConsolas() throws ClassNotFoundException, SQLException {

        super();

    }

    public void deleteJuegos(int id) throws SQLException {

        String sql = "DELETE FROM tablajuegos WHERE id=?";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();

    }

    public ResultSet getConsolas(String plataforma) throws SQLException {

        String sql;
        if (plataforma.equals("Ps4")){
            sql= "SELECT * FROM consolas WHERE plataforma='PS4'";
        } else if(plataforma.equals("Xbox One")) {
            sql= "SELECT * FROM consolas WHERE plataforma='X-box One'";
        }else if(plataforma.equals("Nintendo Switch")){
            
            sql= "SELECT * FROM consolas WHERE plataforma='Nintendo Switch'";
            
        }
        
        else{
            sql= "SELECT * FROM consolas WHERE plataforma='Ps4'";
        }
         Statement sentencia = conexion.createStatement();
        ResultSet resultado = sentencia.executeQuery(sql);
        return resultado;
}}

