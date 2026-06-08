import 'package:flutter/material.dart';
import 'package:production_ready_app/feature/game/presentation/widgets/attempts_widget.dart';
import 'package:production_ready_app/feature/game/presentation/widgets/game_keyboard.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data,',style: Theme.of(context).textTheme.bodyLarge),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          const AttemptsWidget(),
          const Spacer(),
          const GameKeyBoard()
        ],
      ),
    );
  }
}