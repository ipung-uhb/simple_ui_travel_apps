// dashboard_screen.dart
import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import the DetailScreen

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
                  caption: 'Beautiful Beach 01',
                  source: 'Photo by John Doe',
                  onTap: () {
                    // Navigate to the detail screen when the card is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                          caption: 'Beautiful Beach 01',
                          source: 'Photo by John Doe',
                          description:
                          'This is a beautiful beach with white sand and clear blue water.',
                        ),
                      ),
                    );
                  },
                ),
                TravelCard(
                  imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                  caption: 'Beautiful Beach 02',
                  source: 'Photo by John Doe',
                  onTap: () {
                    // Navigate to the detail screen when the card is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                          caption: 'Beautiful Beach 02',
                          source: 'Photo by John Doe',
                          description:
                          'This is a beautiful beach with white sand and clear blue water.',
                        ),
                      ),
                    );
                  },
                ),
                TravelCard(
                  imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                  caption: 'Beautiful Beach 03',
                  source: 'Photo by John Doe',
                  onTap: () {
                    // Navigate to the detail screen when the card is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          imageUrl: 'https://expertvagabond.com/wp-content/uploads/travel-photography-tips-guide-1.jpg',
                          caption: 'Beautiful Beach 03',
                          source: 'Photo by John Doe',
                          description:
                          'This is a beautiful beach with white sand and clear blue water.',
                        ),
                      ),
                    );
                  },
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
  final VoidCallback onTap; // Callback function to handle tap events

  TravelCard({
    required this.imageUrl,
    required this.caption,
    required this.source,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Use the onTap callback
      child: Card(
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
      ),
    );
  }
}
