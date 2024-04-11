import 'package:flutter/material.dart';
import 'package:quizzyy/level_screen.dart';

// Define a simple CategoryCard widget
class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final List<String> levels;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.color,
    required this.icon,
    required this.levels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LevelScreen(levels: levels),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 50,
                color: color,
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// HomeScreen widget
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0, // Change this value to adjust the aspect ratio
        padding: EdgeInsets.all(16.0),
        children: [
          CategoryCard(
            title: 'English',
            color: Colors.blue,
            icon: Icons.language,
            levels: [
              'Easy',
              'Medium',
              'Hard'
            ], // Add levels for English category
          ),
          CategoryCard(
            title: 'Science',
            color: Colors.green,
            icon: Icons.science,
            levels: [
              'Easy',
              'Medium',
              'Hard'
            ], // Add levels for Science category
          ),
          CategoryCard(
            title: 'Logical Reasoning',
            color: Colors.orange,
            icon: Icons.lightbulb_outline,
            levels: [
              'Easy',
              'Medium',
              'Hard'
            ], // Add levels for Logical Reasoning category
          ),
          CategoryCard(
            title: 'General Knowledge',
            color: Colors.purple,
            icon: Icons.book,
            levels: [
              'Easy',
              'Medium',
              'Hard'
            ], // Add levels for General Knowledge category
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
