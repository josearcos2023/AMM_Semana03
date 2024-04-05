class Usuario {
  String nombre = "";
  String email = "";
  String contrasena = "";

  Usuario(this.nombre, this.email, this.contrasena);
}

mixin Autenticacion {
  bool iniciarSesion(String email, String contrasena) {
    if (email == email && contrasena == contrasena) {
      print('Welcome ${email}');
      return true;
    } else {
      print('Failed to login. Verify your email and/or password.');
      return false;
    }
  }
}

class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String contrasena)
      : super(nombre, email, contrasena);
}

void main() {
  var usuarioAutenticado =
      UsuarioAutenticado('Jose', 'jose@tecsup.edu.pe', 'Tecsup00');

  usuarioAutenticado.iniciarSesion('jose@tecsup.edu.pe', 'Tecsup00');
}
