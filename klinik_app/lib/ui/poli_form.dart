import 'package:flutter/material.dart';
import 'package:klinik_app/model/poli.dart';
import 'package:klinik_app/ui/poli_detail.dart';
import '/service/poli_service.dart';
class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli", style: TextStyle(color: Colors.white))),
      body: SingleChildScrollView(
        child: Form(
        key: _formKey,
        child: Column(
          children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
        ),
      ),
    ),
  );
}

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }
  _tombolSimpan() {
      return ElevatedButton(
        onPressed: () async {
          Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
          await PoliService().simpan(poli).then((value) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PoliDetail(poli: value)));
        });
      }, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
     
      child: const Text("Simpan", style: TextStyle(color: Colors.white)));
 }
}