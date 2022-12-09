import 'dart:async';

import 'package:estados/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario;

  final StreamController<Usuario> _usuarioStreamController =
      StreamController<Usuario>.broadcast();

  Usuario? get usuario => _usuario;
  bool get existeUsuario => (_usuario != null) ? true : false;

  void cargarUsuario(Usuario user) {
    _usuario = user;
    _usuarioStreamController.add(user);
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    _usuarioStreamController.add(_usuario!);
  }

  dispose() => _usuarioStreamController.close();

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;
}

final usuarioService = _UsuarioService();
