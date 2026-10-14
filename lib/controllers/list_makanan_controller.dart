import 'package:first_flutter/models/makanan_models.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  // buat data datanya
  RxList<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng",
      hargaMakanan: "10000",
      gambarMakanan: "https://akcdn.detik.net.id/community/media/visual/2022/11/25/resep-nasi-goreng-seafood_43.jpeg?w=700&q=90",
      deskripsi: "Nasi goreng adalah makanan yang terbuat dari nasi yang digoreng dan diaduk dalam minyak goreng atau margarin, biasanya ditambah bawang, saus, dan bahan lainnya.",
      rating: 4,
      review: "Enak banget nasi gorengnya!",
    ),
    MakananModel(
      namaMakanan: "Sate",
      hargaMakanan: "15000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10",
      deskripsi: "Sate adalah makanan yang terbuat dari daging yang dipotong-potong dan ditusuk-tusuk, lalu dipanggang dengan bumbu kacang.",
      rating: 4,
      review: "Sate enak banget!",
    ),
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "15000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EoVEfuiC0popmi5kR5T9Daci2eHROQcRvFjdUMkl-eHRnB7y0Nf9U8Q&s=10",
      deskripsi: "Soto ayam adalah makanan yang terbuat dari ayam yang direbus dengan bumbu kacang.",
      rating: 4,
      review: "Soto ayam enak banget!",
    ),
    MakananModel(
      namaMakanan: "Nasi Padang",
      hargaMakanan: "20000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSOLE9IW03WA6xBO1509rO-i3Gg5dP-kmSSy6UfHZj9Q&s=10",
      deskripsi: "Nasi padang adalah makanan yang terbuat dari nasi yang dimasak dengan bumbu kacang.",
      rating: 4,
      review: "Nasi padang enak banget!",
    ),
    MakananModel(
      namaMakanan: "Nasi Kuning",
      hargaMakanan: "15000",
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq7Cp8lCtd1QRMgFAhdBq9gk14yPUhoa9A9Kmc2ZqYzA&s=10",
      deskripsi: "Nasi kuning adalah makanan yang terbuat dari nasi yang dimasak dengan bumbu kuning.",
      rating: 4,
      review: "Nasi kuning enak banget!",
    ),
  ].obs;
}
