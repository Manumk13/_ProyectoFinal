/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.test;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import java.sql.SQLException;
import tk.mmagames.registroconsolas.Consola;
import tk.mmagames.registroconsolas.GestorConsolas;

/**
 *
 * @author cice
 */
public class TestRegistroConsola {

    public TestRegistroConsola() {
    }

    @Test
    public void consulta() {
        GestorConsolas gc = null;

        try {

            gc = new GestorConsolas();

            gc.registrar(new Consola("https://media.game.es/COVERV2/3D_L/P02/P02623.png", "PLAYSTATION 4 + AC ODYSSEY DE REGALO", "PS4", "El volante con pedales Numskull es el complemento perfecto para tu PC, PlayStation 3/4 o consola Xbox One. Completo con paletas de cambio montadas en la rueda, este volante es perfecto para tus juegos de conducción favoritos. El volante tiene una rotación de 180 ° para mayor realismo y precisión en la conducción y también cuenta con 3 modos de conducción diferentes para adaptarse al jugador. El volante tiene botones reprogramables incorporados que pueden adaptarse a su estilo de carreras.", 135));

        } catch (Exception e) {

            fail("Error bbdd");

        } finally {

            try {
                if (gc != null) {
                    gc.cerrarConexion();
                }
            } catch (SQLException ex) {

                fail("Error bbdd");
            }

        }
    }
}
