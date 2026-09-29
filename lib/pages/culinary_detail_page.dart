import 'package:flutter/material.dart';

import '../models/culinaryModels.dart';

class CulinaryDetailPage extends StatefulWidget {
  final Culinary culinary;

  const CulinaryDetailPage({super.key, required this.culinary});

  @override
  State<CulinaryDetailPage> createState() => _CulinaryDetailPageState();
}

class _CulinaryDetailPageState extends State<CulinaryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 194, 212),
        elevation: 0,
        title: Text(
          widget.culinary.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: Colors.white),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAlignment.start,
          children: <Widget>[
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                widget.culinary.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: const Icon(Icons.broken_image, size: 50),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Info Lapangan
            Text(
              widget.culinary.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),

            Text(
              '${widget.culinary.origin}, ${widget.culinary.category}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.pink,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),
            Text('Rasa: ${widget.culinary.flavor}'),
            Text('Bahan Baku Utama: ${widget.culinary.mainIngredient}'),

            const SizedBox(height: 8),
            Text('Tingkat Kepedasan: ${widget.culinary.spicyLevel}'),
            Text('Cocok Untuk: ${widget.culinary.servingTime}'),

            const SizedBox(height: 8),
            Text(
              '${widget.culinary.description} ${widget.culinary.wikipediaUrl}',
            ),
          ],
        ),
      ),
    );
  }
}
