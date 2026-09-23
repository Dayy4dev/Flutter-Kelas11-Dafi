import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var hasil = 0.0.obs;

  // method + - * /
  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
    Get.snackbar(
      "Hasil",
      "Hasil penjumlahan: $hasilTambah",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
    Get.snackbar(
      "Hasil",
      "Hasil pengurangan: $hasilKurang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasil.value = hasilKali;
    Get.snackbar(
      "Hasil",
      "Hasil perkalian: $hasilKali",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    double hasilBagi = angka1 / angka2;
    hasil.value = hasilBagi;
    Get.snackbar(
      "Hasil",
      "Hasil pembagian: $hasilBagi",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
