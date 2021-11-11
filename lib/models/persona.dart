class Persona {
  int _id;
  String _tipoDoc;
  String _numeroDoc;
  String _nombre;
  String _apellido;
  String _telefono;
  String _email;
  String _password;
  DateTime _fechaNacimiento;
  Sexo _sexo;
  String _nacionalidad;
  String _estadoCivil;

  // TODO: Descomentar cuando se creen estas clases
  // TipoPersona _tipoPersona;
  // Direccion _direccion;
}

enum Sexo {
  Masculino,
  Femenino,
  X,
}
