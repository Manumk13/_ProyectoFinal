/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.filacc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author cice
 */
public class FiltroAccesorios extends GestorBBDD {
    public FiltroAccesorios() throws ClassNotFoundException, SQLException {

        super();

    }

    public void deleteJuegos(int id) throws SQLException {

        String sql = "DELETE FROM tablajuegos WHERE id=?";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();

    }

    public ResultSet getAccesorios(String plataforma) throws SQLException {

        String sql;
        if (plataforma.equals("Acc")){
            sql= "SELECT * FROM accesorios";
        }
        
        else{
            sql= "SELECT * FROM accesorios WHERE plataforma='Ps4'";
        }
         Statement sentencia = conexion.createStatement();
        ResultSet resultado = sentencia.executeQuery(sql);
        return resultado;
}}
