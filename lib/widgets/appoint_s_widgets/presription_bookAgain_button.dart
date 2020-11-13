import 'package:doctor_duniya/screens/medicine/prescribe_medicine_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PrescriptionBookAgainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlineButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed(PrescribeMedicineButton.routName);
          },
          icon: Icon(FlutterIcons.prescription_mco),
          label: Text("Prescription"),
        ),
        SizedBox(
          width: 7,
        ),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(FlutterIcons.shield_outline_mco),
          label: Text("Book \nAgain"),
        )
      ],
    );
  }
}
