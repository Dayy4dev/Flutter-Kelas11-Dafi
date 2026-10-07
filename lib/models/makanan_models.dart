class MakananModel {
  String namaMakanan;
  String hargaMakanan;
  String gambarMakanan;
  String deskripsi;
  int rating;
  String review;

  //constructor - agar bisa langsung diisikan saat membuat object
  MakananModel({
    required this.namaMakanan,
    required this.hargaMakanan,
    required this.gambarMakanan,
    required this.deskripsi,
    required this.rating,
    required this.review,
  });
}
