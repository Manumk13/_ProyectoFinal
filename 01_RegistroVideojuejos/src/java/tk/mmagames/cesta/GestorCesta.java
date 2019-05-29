/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.cesta;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author cice
 */
public class GestorCesta extends GestorBBDD {
    public GestorCesta() throws ClassNotFoundException, SQLException{
        super();
    }
    
    public ResultSet getJuegos() throws SQLException{
        String sql = "SELECT * FROM tablajuegos";
        Statement sentencia = conexion.createStatement();
        ResultSet resultado = sentencia.executeQuery(sql);
        return resultado;
    }
      public ResultSet getConsolas() throws SQLException{
        String sql = "SELECT * FROM tablaconsolas";
        Statement sentencia = conexion.createStatement();
        ResultSet resultado = sentencia.executeQuery(sql);
        return resultado;
    }
        public ResultSet getAccesorios() throws SQLException{
        String sql = "SELECT * FROM -accesorios";
        Statement sentencia = conexion.createStatement();
        ResultSet resultado = sentencia.executeQuery(sql);
        return resultado;
    }

    ResultSet getCesta() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}