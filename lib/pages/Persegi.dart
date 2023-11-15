import 'package:bangun_datar_app/controler/persegi_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});

  final PersegiController persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Persegi Page")),
      body: Column(
        children: [
          Image.asset(
            "assets/persegi.jpg",
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("persegi"),
          ),
          Text(
              "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk displaystyle (a)} yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                persegiController.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "sisi",
                  hintText: "Masukkansisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    persegiController.hitungLuas();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // text color
                      backgroundColor: Colors.yellow),
                  child: Text("Hitung Luas")),
              Obx(() => Text(persegiController.hasil.value)),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        persegiController.hitungKeliling();
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, // text color
                          backgroundColor: Colors.green),
                      child: Text("Hitung Keiling")),
                ],
              ),
              Obx(() => Text(persegiController.kel.value))
            ],
          ),
        ],
      ),
    );
  }
}
