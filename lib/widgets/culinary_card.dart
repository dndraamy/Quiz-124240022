import 'package:flutter/material.dart';

import '../models/culinaryModels.dart';
import '../pages/culinary_detail_page.dart';

class CUlinaryCard extends StatelessWidget {
  final Culinary culinary;

  const CUlinaryCard({super.key, required this.culinary});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CulinaryDetailPage(culinary: culinary),
          ),
        );
      },

      child: Column(
        children: [
          Image.network(culinary.imageUrl, width: double.infinity, height: 200),
          Text(culinary.name),
          Text('Rp ${culinary.category}'),
          Text('Jenis Lantai: ${culinary.origin}'),
        ],
      ),
    );
  }
}
