package com.akitoy.proyecto.controller;

import com.akitoy.proyecto.model.Producto;
import com.akitoy.proyecto.service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller

public class HomeController {

    @Autowired
    ProductoService productoService;

    @RequestMapping(value="/")
    public ModelAndView index(){
        ModelAndView model = new ModelAndView("index");
        List<Producto> productoList = productoService.getAllProductos();
        model.addObject("productoList" , productoList);

        return model;
    }
}
