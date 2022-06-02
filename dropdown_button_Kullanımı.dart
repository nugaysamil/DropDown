import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = ['Ankara', 'buRSA', 'İstanbul', 'Ankara','Adıyaman'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('Sehir Seçiniz'),
        icon: Icon(Icons.arrow_downward),
        style: TextStyle(color: Colors.red),
        /* items: [
          DropdownMenuItem(
            child: Text('Ankara Sehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İzmir Sehri'),
            value: 'İzmir',
          ),
          DropdownMenuItem(
            child: Text('Bursa Sehri'),
            value: 'Bursa',
          ), */
        /* ], */
        items: _tumSehirler.map((String oAnkiSehir) => DropdownMenuItem(
              child: Text(oAnkiSehir),
              value: oAnkiSehir,
            )).toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            print("Çalıştı $yeni");
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
