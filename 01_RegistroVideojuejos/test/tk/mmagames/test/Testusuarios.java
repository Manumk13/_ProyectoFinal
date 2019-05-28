/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.test;

import static java.lang.System.gc;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import tk.mmagames.validador.Usuario;

import tk.mmagames.validador.ValidadorUsuarios;

/**
 *
 * @author cice
 */
public class Testusuarios {

    public Testusuarios() {
    }

    @Test
    public void consulta() {
        ValidadorUsuarios va = null;
        Usuario usu = null;
        try {

            va = new ValidadorUsuarios();
            usu = new Usuario("tomas@gmail.com", "147852");
            boolean ok = va.validarUsuario(usu);
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
