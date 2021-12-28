import 'package:flutter/material.dart';
import 'package:hp_frontend/models/persona.dart';

class InformationCard extends StatelessWidget {
  InformationCard({Key? key}) : super(key: key);

  final Persona currentUser = Persona(
      id: 1,
      tipoDoc: 'DNI',
      numeroDoc: '45678909',
      nombre: 'Juan',
      apellido: 'Pérez',
      telefono: '341982022',
      email: 'jperez@mail.com',
      fechaNacimiento: DateTime(1996, 4, 12),
      sexo: Sexo.M,
      nacionalidad: 'Argentina',
      estadoCivil: 'Soltero');

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: [
        Card(
          elevation: 10,
          color: const Color(0xFF051339),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${currentUser.nombre} ${currentUser.apellido}',
                      style: const TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  currentUser.numeroDoc,
                  style: const TextStyle(
                    fontSize: 22.0,
                    color: Colors.white70,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconLabelTextCard(
                      icon: currentUser.sexo == Sexo.M
                          ? Icons.male_rounded
                          : currentUser.sexo == Sexo.F
                              ? Icons.female_rounded
                              : Icons.circle_outlined,
                      label: 'SEXO',
                      value: currentUser.sexo == Sexo.M
                          ? 'Hombre'
                          : currentUser.sexo == Sexo.F
                              ? 'Mujer'
                              : 'Otro',
                    ),
                    IconLabelTextCard(
                      icon: Icons.calendar_today_rounded,
                      label: 'EDAD',
                      value:
                          '${DateTime.now().year - currentUser.fechaNacimiento.year} años',
                    ),
                    const IconLabelTextCard(
                      icon: Icons.monitor_weight_rounded,
                      label: 'PESO',
                      value: '67 kg',
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Más'),
                  collapsedIconColor: Colors.white54,
                  collapsedTextColor: Colors.white54,
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  children: [
                    CardDataRow(
                      rowKey: 'Teléfono',
                      rowValue: currentUser.telefono,
                    ),
                    CardDataRow(
                      rowKey: 'Correo electrónico',
                      rowValue: currentUser.email,
                    ),
                    CardDataRow(
                      rowKey: 'Nacionalidad',
                      rowValue: currentUser.nacionalidad,
                    ),
                    CardDataRow(
                      rowKey: 'Estado civil',
                      rowValue: currentUser.estadoCivil,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CardDataRow extends StatelessWidget {
  const CardDataRow({
    Key? key,
    required this.rowKey,
    required this.rowValue,
  }) : super(key: key);

  final String rowKey;
  final String rowValue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        rowKey,
        style: const TextStyle(color: Colors.white70),
      ),
      trailing: Text(
        rowValue,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}

class IconLabelTextCard extends StatelessWidget {
  const IconLabelTextCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon, size: 60.0, color: Colors.white),
              ),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 11.0,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
