import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first_flutter/routes.dart';
import 'package:first_flutter/controllers/list_makanan_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Makanan')),
      body: Container(
        margin: const EdgeInsets.all(16),
        height: 200,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return SizedBox(
                width: 320,
                child: InkWell(
                onTap: () {
                  // pindah ke detail page
                  // menggunakan Get.to
                  Get.toNamed(
                    Routes.detailMakanan,
                      arguments: {
                        'namaMakanan': makanan.namaMakanan,
                        'hargaMakanan': makanan.hargaMakanan,
                        'gambarMakanan': makanan.gambarMakanan,
                        'rating': makanan.rating,
                        'deskripsi': makanan.deskripsi,
                        'review': makanan.review,
                      },
                    );
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.network(makanan.gambarMakanan),
                        title: Text(
                          makanan.namaMakanan,
                          style: TextStyle(fontSize: 16),
                        ),
                        subtitle: Text(
                          "Rp. ${makanan.hargaMakanan}",
                          style: TextStyle(fontSize: 14),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}