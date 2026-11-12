import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            HobbyCard(
              title: 'Travelling',
              icon: Icons.flight_takeoff,
              color: Colors.green,
            ),
            HobbyCard(
              title: 'Skating',
              icon: Icons.roller_skating,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
         
         Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(20),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right:20),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  
                ),
                Text(title, style: TextStyle(color: Colors.white)),
              ],
              ),
          ),
    
    
          ),
        ],),
      
    );
  }
}

