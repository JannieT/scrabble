import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PlayScreen());
  }
}

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Four Sided Game Board')),
      body: const Center(
        child: FourSidedBoard(), // Show the game board in the center
      ),
    );
  }
}

class FourSidedBoard extends StatelessWidget {
  const FourSidedBoard({super.key});

  // This function creates a tile with a label
  Widget buildTile(String label) {
    return Container(
      width: 80, // width of the tile
      height: 80, // height of the tile
      alignment: Alignment.center, // center the text inside
      decoration: BoxDecoration(
        color: Colors.blue, // blue background color
        border: Border.all(color: Colors.black, width: 2), // black border
        borderRadius: BorderRadius.circular(8), // rounded corners
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white, // white text color
          fontSize: 18, // font size
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // width of the board
      height: 300, // height of the board
      color: Colors.grey[300], // light grey background
      child: Stack(
        children: [
          // Top tile
          Positioned(top: 0, left: 110, child: buildTile('Top')),
          // Bottom tile
          Positioned(bottom: 0, left: 110, child: buildTile('Bottom')),
          // Left tile
          Positioned(top: 110, left: 0, child: buildTile('Left')),
          // Right tile
          Positioned(top: 110, right: 0, child: buildTile('Right')),
          // Center area with text
          Positioned.fill(
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
                alignment: Alignment.center,
                child: const Text('Center'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
