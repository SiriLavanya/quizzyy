import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  final List<String> levels;

  const LevelScreen({Key? key, required this.levels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Levels'),
        backgroundColor: Colors.purple, // Set the app bar color
      ),
      body: ListView.builder(
        itemCount: levels.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.purple.withOpacity(0.1), // Set the card color
            child: ListTile(
              title: Text(
                levels[index],
                style: TextStyle(color: Colors.white), // Set the text color
              ),
              onTap: () {
                // Navigate to the quiz screen for the selected level
              },
            ),
          );
        },
      ),
    );
  }
}
