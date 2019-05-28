/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.test;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import tk.mmagames.registrovideojuegos.GestorJuegos;
import tk.mmagames.registrovideojuegos.Juego;
import tk.mmagames.tablaaccesorios.GestorAcc;

/**
 *
 * @author cice
 */
public class TestConsultaAccesorios {

    public TestConsultaAccesorios() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    @Test
    public void tablaAccesorios() {
        GestorAcc ga = null;
        try {
            ga = new GestorAcc();
            ResultSet rs = ga.getAcc();
        } catch (Exception e) {
            fail("Error de la base de datos");
        } finally {
            try {
                if (ga != null) {
                    ga.cerrarConexion();
                }
            } catch (SQLException ex) {
                fail("error de base de datos al cerrar");
            }
        }
    }
}
//CODIGO MODIFICADO POR MANU
