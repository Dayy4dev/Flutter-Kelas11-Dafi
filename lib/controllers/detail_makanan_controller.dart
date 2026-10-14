import 'package:first_flutter/models/makanan_models.dart';
import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String gambarMakanan;
  late String deskripsi;
  late int rating;
  late String review;
  
  @override
  void onInit() {
    super.onInit();
    final argument = Get.arguments;
    namaMakanan = argument['namaMakanan'];
    hargaMakanan = argument['hargaMakanan'];
    gambarMakanan = argument['gambarMakanan'];
    deskripsi = argument['deskripsi'];
    rating = argument['rating'];
    review = argument['review'];
  }
}