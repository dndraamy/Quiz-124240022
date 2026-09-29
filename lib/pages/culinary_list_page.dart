import 'package:flutter/material.dart';

import '../models/culinaryModels.dart';
import 'culinary_detail_page.dart';

class CulinaryListPage extends StatelessWidget {
  const CulinaryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinarizz'),
        backgroundColor: const Color.fromARGB(255, 248, 194, 212),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: culinaryList.length,
        itemBuilder: (context, index) {
          final culinary = culinaryList[index];

          return Card(
            child: InkWell(
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CulinaryDetailPage(culinary: culinary),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.network(
                    culinary.imageUrl,
                    height: 280,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Text(culinary.name),
                  Text(culinary.category),
                  Text(culinary.origin),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
