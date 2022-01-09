class Estudio {
  int id;
  DateTime fechaHora;
  String tipoEstudio;
  String estado;
  String? resultado;
  int idProfesional;

  Estudio(
      {required this.id,
      required this.fechaHora,
      required this.tipoEstudio,
      required this.estado,
      required this.resultado,
      required this.idProfesional});
}
