// detail_screen.dart
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrl;
  final String caption;
  final String source;
  final String description;

  DetailScreen({
    required this.imageUrl,
    required this.caption,
    required this.source,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              caption,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              source,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
