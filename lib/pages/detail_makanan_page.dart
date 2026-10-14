import 'package:first_flutter/components/info_section.dart';
import 'package:first_flutter/components/price_text.dart';
import 'package:first_flutter/components/rating_badge.dart';
import 'package:first_flutter/controllers/detail_makanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.namaMakanan)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.network(
              controller.gambarMakanan,
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.namaMakanan,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                PriceText(price: double.parse(controller.hargaMakanan)),
                const SizedBox(height: 16),
                RatingBadge(rating: controller.rating),
                const SizedBox(height: 16),
                InfoSection(
                  title: "Deskripsi",
                  content: controller.deskripsi,
                ),
                const SizedBox(height: 16),
                InfoSection(
                  title: "Review",
                  content: controller.review,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
