class Persona {
  int id;
  String tipoDoc;
  String numeroDoc;
  String nombre;
  String apellido;
  String telefono;
  String email;
  String? password;
  DateTime fechaNacimiento;
  Sexo sexo;
  String nacionalidad;
  String estadoCivil;

  Persona(
      {required this.id,
      required this.tipoDoc,
      required this.numeroDoc,
      required this.nombre,
      required this.apellido,
      required this.telefono,
      required this.email,
      this.password,
      required this.fechaNacimiento,
      required this.sexo,
      required this.nacionalidad,
      required this.estadoCivil});

  // TODO: Descomentar cuando se creen estas clases
  // TipoPersona _tipoPersona;
  // Direccion _direccion;
}

enum Sexo {
  M,
  F,
  X,
}
