import 'package:first_flutter/controllers/list_makanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Makanan')),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                // pindah ke detail page menggunakan Get.to
                // Get.to(() => DetailMakananPage(makanan: makanan));
              },
              child: ListTile(
                title: Text(makanan.namaMakanan),
                subtitle: Text(makanan.hargaMakanan),
                trailing: Icon(Icons.arrow_forward),
              ),
            );
          },
        ),
      ),
    );
  }
}
