/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.validadoradmin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tk.mmagames.validador.Usuario;

/**
 *
 * @author cice
 */
public class ValidadorAdmin extends GestorBBDD {

    public ValidadorAdmin() throws ClassNotFoundException, SQLException {

        super();
    }

    public boolean validarAdmin(Admin nuevoAdmin) throws SQLException {

        boolean correcto;

        String sql = "SELECT * FROM administradores WHERE email=? AND password=?";//preparacion consulta bbdd llama tabla
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.setString(1, nuevoAdmin.getEmail());
        ps.setString(2, nuevoAdmin.getPassword());

        //ejecución consulta mira tabla
        ResultSet rs = ps.executeQuery();

        if (rs.next() == true) {

            correcto = true;
        } else {
            correcto = false;
        }

        rs.close();//verificacion cierre

        return correcto;

    }

}
