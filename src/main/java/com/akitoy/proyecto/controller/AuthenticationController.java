package com.akitoy.proyecto.controller;

import com.akitoy.proyecto.model.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticationController {
    @RequestMapping(value = { "/login" }, method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping(value = "/registro", method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView model = new ModelAndView();
        Usuario usuario = new Usuario();
        model.addObject("usuario", usuario);
        model.setViewName("registro");
        return model;
    }

}
