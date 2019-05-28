/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.mmagames.registroadmin;

import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author cice
 */
@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.conectar());
    ModelAndView mav = new ModelAndView();

    @RequestMapping("index.htm")

    public ModelAndView listar() {

        String sql = "select * from administradores";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos", datos);
        mav.setViewName("index");
        return mav;

    }

    @RequestMapping(value = "creacion.htm", method = RequestMethod.GET)
    public ModelAndView agregar() {

        mav.setViewName("creacion");
        return mav;

    }

    @RequestMapping(value = "creacion.htm", method = RequestMethod.POST)

    public ModelAndView agregar(Admin admin) {

        String sql = "insert into administradores (nombre,apellidos,email,password) values (?,?,?,?)";

        this.jdbcTemplate.update(sql,admin.getNombre(),admin.getApellidos(),admin.getEmail(),admin.getPassword() );
        return new ModelAndView("redirect:/index.htm");

    }

}
