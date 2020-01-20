package com.akitoy.proyecto.controller;

import com.akitoy.proyecto.model.Producto;
import com.akitoy.proyecto.service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/carrito")
public class CarritoController {

    @Autowired
    ProductoService productoService;

    @RequestMapping(value="/agregar/{id}", method = RequestMethod.GET)
    public ModelAndView agregar(@PathVariable Long id, HttpSession session){

        List<Producto> carrito;
        if(session.getAttribute("carrito") == null){
            carrito = new ArrayList<>();

        } else {
            carrito = (List<Producto>) session.getAttribute("carrito");
        }
        carrito.add(productoService.getProductoById(id));

        Double precioTotal = carrito.stream()
                .mapToDouble(p -> p.getPrecio_venta())
                .sum();

        session.setAttribute("carrito" , carrito);
        session.setAttribute("precioTotal" , precioTotal);
        session.setAttribute("cantidad" , carrito.size());

        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value="/verCarrito", method = RequestMethod.GET)
    public ModelAndView verCarrito(){
        return  new ModelAndView("verCarrito");
    }

    @RequestMapping(value="/eliminar/{id}", method = RequestMethod.GET)
    public ModelAndView elimar(@PathVariable Long id, HttpSession session){

        List<Producto> carrito = (List<Producto>) session.getAttribute("carrito");
        //carrito.remove(productoService.getProductoById(id));
        Producto producto = carrito.stream()
                .filter(p -> id.equals(p.getId()))
                .findAny()
                .orElse(null);

        Double precioTotal = carrito.stream()
                .mapToDouble(p -> p.getPrecio_venta())
                .sum();

        carrito.remove(producto);
        session.setAttribute("carrito" , carrito);
        session.setAttribute("precioTotal" , precioTotal);
        session.setAttribute("cantidad" , carrito.size());
        return  new ModelAndView("redirect:/carrito/verCarrito");
    }

}
