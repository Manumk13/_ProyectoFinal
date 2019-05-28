package tk.mmagames.test;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

/**
 *
 * @author cice
 */
public class TestVideojuegos {

    public TestVideojuegos() {
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
    public void consultaJuegos() {

        GestorJuegos gj = null;
        try {
            gj= new GestorJuegos();
            gj.registrar(new Juego("https://s3.gaming-cdn.com/images/products/2615/orig/mario-kart-8-deluxe-switch-cover.jpg", "Mario Kartr 8","Nintendo EAD" ," Nintendo EAD"," Carreras", "Nintendo Switch",46 ));
        } catch (Exception e) {
            fail("Error de la base de datos");
        } finally {
            try {
                if (gj != null) {
                    gj.cerrarConexion();
                }
            } catch (SQLException ex) {
                fail("error de base de datos al cerrar");
            }
        }
    }
}
