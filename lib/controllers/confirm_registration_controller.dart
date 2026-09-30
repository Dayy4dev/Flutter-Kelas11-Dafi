import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String jenisKelamin;
  late String alamat; 
  late String email;
  late String noWA;
  
  @override
  void onInit() {
    super.onInit();
    final argument = Get.arguments;
    nama = argument['nama'];
    jenisKelamin = argument['jenis_kelamin'];
    alamat = argument['alamat'];
    email = argument['email'];
    noWA = argument['nomor_wa'];
  }
}
