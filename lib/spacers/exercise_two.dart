import 'package:flutter/material.dart';
import 'package:scrabble/spacers/box.dart';

class ExerciseTwo extends StatelessWidget {
  const ExerciseTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Box();
  }
}

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  
    return Column(
      children: [
        Spacer(), /
        Row(
          children: [
            Spacer(),
            greenBox(),
            Spacer(flex: 2),
            greenBox(),
            Spacer(),
          ],
        ),

        Spacer(),

        Row(
          children: [
            greenBox(),
            Spacer(),
            greenBox(),
          ],
        ),

        Spacer(),

  
        Row(
          children: [
            Spacer(),
            greenBox(),
            Spacer(flex: 2),
            greenBox(),
            Spacer(),
          ],
        ),

        Spacer(), 
      ],
    );
  }

  Widget greenBox() {
    return Container(
      width: 40,
      height: 40,
      color: Colors.green,
    );
  }
}

