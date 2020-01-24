package com.akitoy.proyecto.service;

import com.akitoy.proyecto.model.Usuario;

import java.util.List;

public interface UsuarioService {

    List<Usuario> getAllUsuarios();

    Usuario getUsuarioById(Integer id);

    void saveUsuario(Usuario usuario);

    boolean usuarioYaRegistrado(Usuario usuario);
}
