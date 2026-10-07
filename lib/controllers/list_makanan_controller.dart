import 'package:first_flutter/models/makanan_models.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  // buat data datanya
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng",
      hargaMakanan: "10000",
      gambarMakanan: "https://picsum.photos/id/100/150",
      deskripsi: "-",
      rating: 4,
      review: "-",
    ),
    MakananModel(
      namaMakanan: "Sate",
      hargaMakanan: "15000",
      gambarMakanan: "https://picsum.photos/id/200/150",
      deskripsi: "-",
      rating: 4,
      review: "-",
    ),
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "15000",
      gambarMakanan: "https://picsum.photos/id/300/150",
      deskripsi: "-",
      rating: 4,
      review: "-",
    ),
    MakananModel(
      namaMakanan: "Nasi Padang",
      hargaMakanan: "20000",
      gambarMakanan: "https://picsum.photos/id/400/150",
      deskripsi: "-",
      rating: 4,
      review: "-",
    ),
    MakananModel(
      namaMakanan: "Nasi Kuning",
      hargaMakanan: "15000",
      gambarMakanan: "https://picsum.photos/id/500/150",
      deskripsi: "-",
      rating: 4,
      review: "-",
    ),
  ];
}
