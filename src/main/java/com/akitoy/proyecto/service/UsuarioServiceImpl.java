package com.akitoy.proyecto.service;

import com.akitoy.proyecto.model.Rol;
import com.akitoy.proyecto.model.Usuario;
import com.akitoy.proyecto.repository.RolRepository;
import com.akitoy.proyecto.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
@Transactional
public class UsuarioServiceImpl implements UsuarioService {

    @Autowired
    BCryptPasswordEncoder encoder;

    @Autowired
    UsuarioRepository usuarioRepository;

    @Autowired
    RolRepository rolRepository;

    @Override
    public List<Usuario> getAllUsuarios() {
        return usuarioRepository.findAll();
    }

    @Override
    public Usuario getUsuarioById(Integer id) {
        return usuarioRepository.findById(id).get();
    }

    @Override
    public void saveUsuario(Usuario usuario) {
        usuario.setPassword(encoder.encode(usuario.getPassword()));
        usuario.setStatus("VERIFIED");
        Rol usuarioRol = rolRepository.findByNombre("USER");
        usuario.setRoles(new HashSet<Rol>(Arrays.asList(usuarioRol)));
        usuarioRepository.save(usuario);
    }

    @Override
    public boolean usuarioYaRegistrado(Usuario usuario) {
        return false;
    }

}
