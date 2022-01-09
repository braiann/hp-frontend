class Registro {
  int id;
  DateTime fechaHora;
  String descripcion;
  String nombre;
  int idPaciente;
  int idTipoRegistro;
  int idInternacion;

  Registro(
      {required this.id,
      required this.fechaHora,
      required this.descripcion,
      required this.nombre,
      required this.idPaciente,
      required this.idTipoRegistro,
      required this.idInternacion});
}
