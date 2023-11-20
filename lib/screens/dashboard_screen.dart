// dashboard_screen.dart
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          // Search form at the top
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for a destination...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // Scrollable card view
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                // Example Travel Card
                TravelCard(
                  imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                  caption: 'Beautiful Beach',
                  source: 'Photo by John Doe',
                ),
                TravelCard(
                  imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                  caption: 'Beautiful Beach',
                  source: 'Photo by John Doe',
                ),
                TravelCard(
                  imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                  caption: 'Beautiful Beach',
                  source: 'Photo by John Doe',
                ),
                // Add more TravelCard widgets for additional items
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TravelCard extends StatelessWidget {
  final String imageUrl;
  final String caption;
  final String source;

  TravelCard({
    required this.imageUrl,
    required this.caption,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            imageUrl,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  caption,
                  style: TextStyle(
                    fontSize: 18,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
