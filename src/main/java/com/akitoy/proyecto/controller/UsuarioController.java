package com.akitoy.proyecto.controller;

import com.akitoy.proyecto.model.Usuario;

import com.akitoy.proyecto.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping(value="/usuario")
public class UsuarioController {

    @Autowired
    UsuarioService usuarioService;

    @RequestMapping(value="/lista", method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView model = new ModelAndView("lista_usuarios");
        List<Usuario> usuarioList = usuarioService.getAllUsuarios();
        model.addObject("usuarioList" , usuarioList);

        return model;
    }

    @RequestMapping(value = "/registrarUsuario", method = RequestMethod.POST)
    public ModelAndView registarUsuario(@Valid Usuario usuario, BindingResult bindingResult, ModelMap modelMap){
        ModelAndView model = new ModelAndView();
        if(bindingResult.hasErrors()){
            model.addObject("mensaje", "Errores en el formulario:");
            modelMap.addAttribute("bindingResult", bindingResult);
        } else if (usuarioService.usuarioYaRegistrado(usuario)) {
            model.addObject("mensaje", "El usuario ya existe" );
        } else{
            usuarioService.saveUsuario(usuario);
            model.addObject("mensaje", "Usuario registrado satisfactoriamente");
        }
        model.addObject("usuario", new Usuario());
        model.setViewName("registro");

        return model;
    }

    @RequestMapping(value = "/actualizarUsuario/{id}", method = RequestMethod.GET)
    public ModelAndView editProducto(@PathVariable Integer id){
        ModelAndView model = new ModelAndView();
        Usuario usuario = usuarioService.getUsuarioById(id);
        model.addObject("usuarioForm", usuario);
        model.setViewName("usuario_form");

        return model;
    }

    @RequestMapping(value="/guardarUsuario", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("usuarioForm") Usuario usuario){
        usuarioService.saveUsuario(usuario);

        return new ModelAndView("redirect:/usuario/lista");
    }

    @RequestMapping(value="/borrarUsuario/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") Integer id){

        return new ModelAndView("redirect:/usuario/lista");
    }

}
