/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.registroadmin;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author cice
 */
public class Conexion {
     public DriverManagerDataSource conectar(){
        
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:8889/bbdd_mma");
        dataSource.setUsername("marlonspark");
        dataSource.setPassword("marlonsaurio");
        return dataSource;
        
        
    }
    
}
