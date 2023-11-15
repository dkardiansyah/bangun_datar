import 'package:get/get.dart';

class PersegiController extends GetxController {
  RxBool isHitungLuas = true.obs;
  int sisi = 0;
  final hasil = "".obs;
  final kel = "".obs;

  void hitungLuas() {
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi =$hitung";
    isHitungLuas.value = false;
  }

  void hitungKeliling() {
    int keliling = sisi * 4;
    hasil.value = "Hasil perhitungan dari $sisi x 4 =$keliling";
    isHitungLuas.value = false;
  }
  }
