import 'package:flutter/material.dart';

class PageNav extends StatelessWidget {
  const PageNav({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/route1'); // Replace '/route1' with the desired route for the first box
            },
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text('Equipment', style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/route2'); // Replace '/route2' with the desired route for the second box
            },
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text('Events', style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/route3'); // Replace '/route3' with the desired route for the third box
            },
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('Employees', style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/route4'); // Replace '/route4' with the desired route for the fourth box
            },
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Text('IDK', style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
