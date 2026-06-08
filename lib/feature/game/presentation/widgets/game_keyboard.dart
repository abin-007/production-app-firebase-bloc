import 'package:flutter/material.dart';
import 'package:production_ready_app/core/theme/app_colors.dart';
import 'package:production_ready_app/feature/game/presentation/bloc/game_bloc.dart';

class GameKeyBoard extends StatelessWidget {
  final Function() onKeyPressed;
  final Function() onDelete;
  final Function() onSubmit;

  const GameKeyBoard({
    super.key,
    required this.onKeyPressed,
    required this.onDelete,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    const rows = ['QWERTYUIOP', 'ASDFGHJKL', 'ZXCVBNM'];

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [...rows.map((row) => _buildKeyBoard(context, state, row))],
      ),
    );
  }

  Widget _buildKeyBoard(BuildContext context, GameState state, String row) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: []);
  }

  Widget _buildRow(BuildContext context, GameState state) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: []);
  }

  Widget _buildKey(BuildContext context, GameState state, String key) {
    return ElevatedButton(
      onPressed: () {},
      
      style: ElevatedButton.styleFrom(

      ),
      child: Text(key,
      style: TextStyle(),),
    );
  }

  Color getKeyColor(BuildContext context, GameState state, String key) {
    final attempts = state.attempts ?? [];
    final word = state.word ?? '';

    // first condition
    for (final attempt in attempts) {
      for (int i = 0; i < attempt.length; i++) {
        if (attempt[i] == key && key == word[i]) {
          return AppColors.green;
        }
      }
    }

    // second condition
    if (word.contains(key)) {
      for (final attempt in attempts) {
        if (attempt.contains(key)) {
          return AppColors.yellow;
        }
      }
    }

    for (final attempt in attempts) {
      if (attempt.contains(key)) {
        return Theme.of(context).colorScheme.onSurfaceVariant;
      }
    }
    return Theme.of(context).colorScheme.onSurface;
  }



  Color getTextColor(BuildContext context, GameState state, String key) {
    final attempts = state.attempts ?? [];
    final word = state.word ?? '';

    // first condition
    for (final attempt in attempts) {
      for (int i = 0; i < attempt.length; i++) {
        if (attempt[i] == key && key == word[i]) {
          return Theme.of(context).colorScheme.surface;
        }
      }
    }

    // second condition
    if (word.contains(key)) {
      for (final attempt in attempts) {
        if (attempt.contains(key)) {
          return Theme.of(context).colorScheme.surface;
        }
      }
    }
    return Theme.of(context).colorScheme.onSurface;
  }
}
