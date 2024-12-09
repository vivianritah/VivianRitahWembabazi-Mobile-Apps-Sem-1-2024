import 'package:flutter/material.dart';

class FlowerDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white, // Screen background color
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title and icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      // Back button functionality
                    },
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.black),
                    onPressed: () {
                      // Favorite button functionality
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Image Section
              Center(
                child: Image.asset(
                  'assets/flower_pot.png', // Replace with your image asset
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              // Title and rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ageratum',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.green, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '4.8 (268 Reviews)',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Description Section
              RichText(
                text: TextSpan(
                  text:
                      'Ageratum is genus of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America...',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                  children: [
                    TextSpan(
                      text: 'Read More',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.green, // Green color for "Read More"
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              // Card with details
              Card(
                color: Colors
                    .white, // Ensure the card background is completely white
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn('Size', 'Medium'),
                      _buildInfoColumn('Plant', 'Orchid'),
                      _buildInfoColumn('Height', '12.6"'),
                      _buildInfoColumn('Humidity', '82%'),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16.0),
              // Price and Add to Cart Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        '\$39.99',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0), // Larger button
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Larger radius
                      ),
                    ),
                    onPressed: () {
                      // Add to Cart button functionality
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildInfoColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
        ),
        SizedBox(height: 4.0),
        Text(
          value,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
