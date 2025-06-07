import 'package:flutter/material.dart';
import 'package:scrabble/spacers/box.dart';

class ExerciseThree extends StatelessWidget {
  const ExerciseThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Box();
  }
    return Column(
      children: [
      
        Row(
          children: [
            Spacer(flex: 5),
            greenBox(),
            greenBox(),
          ],
        ),

        Spacer(),
        Row(
          children: [
            Spacer(flex: 7),
            greenBox(),
          ],
        ),
        Spacer(),

        Row(
          children: [
            Spacer(flex: 4),
            greenBox(),
          ],
        ),

        Spacer(flex: 2),

        
        Row(
          children: [
            Spacer(flex: 5),
            greenBox(),
            greenBox(),
          ],
        ),
      ],
    );
  }

  Widget greenBox() {
    return Container(
      width: 30,
      height: 30,
      color: Colors.green,
      margin: const EdgeInsets.all(4), 
    );
  }
}

