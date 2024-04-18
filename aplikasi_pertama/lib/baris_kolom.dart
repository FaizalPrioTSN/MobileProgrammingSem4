import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height:20,
          ),
          Row (children: [ 
            Text("Baris 1, Kolom 1 "),
            SizedBox(
              width:20,
            ),
            Text("Baris 1, Kolom 2 "),
            SizedBox(
              width:20,
            ),
            Text("Baris 1, Kolom 3 "),
          ],
          ),       
          SizedBox(height:30,
          ),        
          Row(children:[
            Text("Baris 2, Kolom 1 "),
            SizedBox(
              width:20,
            ),
            Text("Baris 2, Kolom 2 "),
            SizedBox(
              width:20,
            ),
            Text("Baris 2, Kolom 3 ")
          ],
          ),        
          SizedBox(height:30,
          ),
          Row(children:[
            Text("Baris 3, Kolom 1 "),
            SizedBox(
              width:20,
            ),
            Text("Baris 3, Kolom 2 "),
            SizedBox(
              width:20,
            ),
            Text("Baris 3, Kolom 3 "),
          ],
          ),
        ],
      ),
    );
  }
}