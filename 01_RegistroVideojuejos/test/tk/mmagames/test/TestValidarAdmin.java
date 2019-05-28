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
import tk.mmagames.validadoradmin.Admin;
import tk.mmagames.validadoradmin.ValidadorAdmin;



/**
 *
 * @author cice
 */
public class TestValidarAdmin {
    
    public TestValidarAdmin() {
    }
    
     @Test
    public void consulta() {
        ValidadorAdmin va = null;
        Admin a = null;
        try {

            va = new ValidadorAdmin();
            a = new Admin("david@gmail.com", "asdfg");
            boolean ok = va.validarAdmin(a);
            if (ok==false){
                fail("Error al validar");
            }
        } catch (Exception e) {

            fail("Error bbdd");

        } finally {

            try {
                if (va != null) {
                    va.cerrarConexion();
                }
            } catch (SQLException ex) {

                fail("Error bbdd");
            }

        }
    }
}
