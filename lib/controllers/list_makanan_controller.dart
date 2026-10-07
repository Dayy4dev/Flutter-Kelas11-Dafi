import 'package:first_flutter/models/makanan_models.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  // buat data datanya
  List<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Nasi Goreng", hargaMakanan: "10000"),
    MakananModel(namaMakanan: "Sate", hargaMakanan: "15000"),
    MakananModel(namaMakanan: "Soto Ayam", hargaMakanan: "15000"),
    MakananModel(namaMakanan: "Nasi Padang", hargaMakanan: "20000"),
    MakananModel(namaMakanan: "Nasi Kuning", hargaMakanan: "15000"),
  ];
}
