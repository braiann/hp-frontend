class RegistroInternacion {
  int id;
  String tipoRegistroInternacion;
  String descripcion;
  DateTime fechaHora;
  String resultado;
  int idInternacion;

  RegistroInternacion(
      {required this.id,
      required this.tipoRegistroInternacion,
      required this.descripcion,
      required this.fechaHora,
      required this.resultado,
      required this.idInternacion});
}
