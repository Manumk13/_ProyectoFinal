/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.test;

import java.sql.SQLException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import tk.mmagames.registro.GestorUsuario;
import tk.mmagames.registro.Usuario;

/**
 *
 * @author cice
 */
public class TestRegistroUsuarios {
    
    public TestRegistroUsuarios() {
    }
       @Test
    public void consulta() {
        GestorUsuario gu = null;
   
        try {

            gu = new GestorUsuario();
          
              gu.registrar(new Usuario("Alejandro","Hurtado","alex@gmail.com","ujikol"));
           
        } catch (Exception e) {

            fail("Error bbdd");

        } finally {

            try {
                if (gu != null) {
                    gu.cerrarConexion();
                }
            } catch (SQLException ex) {

                fail("Error bbdd");
            }

        }
    }
   
   
}
