// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:production_ready_app/core/theme/app_colors.dart';
import 'package:production_ready_app/feature/game/presentation/bloc/game_bloc.dart';

class AttemptRowWidget extends StatelessWidget {

  int attemptsIndex;
  const AttemptRowWidget({
    Key? key,
    required this.attemptsIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc,GameState>(
      builder: (context, state){
        final word = state.word ?? '';
        final previousAttempts = state.attempts ?? [];
        final currentAttempt = state.currentAttempt ?? '';
        final isCurrentAttempt =attemptsIndex == previousAttempts.length;
        return Row(
          children: List.generate(word.length,(letterIndex){
            var text = _getLetter

          })
          
        );
      });
  }

  String _getLetter(
    int letterIndex,
    int attemptsIndex,
    List<String> previousAttempts,
     String currentAttempt,
      bool isCurrentAttempt){
        if(attemptsIndex< previousAttempts.length){
          return previousAttempts[attemptsIndex][letterIndex];

        }else if(isCurrentAttempt){
          return letterIndex<currentAttempt.length?currentAttempt[letterIndex] : '';
        }
        return '';
      }

    // boxColor function
      Color? _getBoxColor(
        BuildContext context,
        String letter,
        String word,
        int attemptIndex,
        int letterIndex,
        List<String> previousAttempts,
        bool isCurrentAttempt
      ){
        if(attemptIndex >= previousAttempts.length ||
        letter.isEmpty ||
        isCurrentAttempt){
          return null;
        }else if(word[letterIndex] == letter){
          return AppColors.green;

        }else if (word.contains(letter)){
          return AppColors.yellow;

        }
        return Theme.of(context).colorScheme.onSurfaceVariant;

      }

      Color? _getTextColor(
        BuildContext context,
        String letter,
        String word,
        int attemptIndex,
        int letterIndex,
        List<String> previousAttempts,
        bool isCurrentAttempt
      ){
        if(attemptIndex >= previousAttempts.length ||
        letter.isEmpty ||
        isCurrentAttempt){
          return Theme.
          of(context).colorScheme.onSurface;
        }else if(word[letterIndex] == letter || word.contains(letter)){
          return Theme.
          of(context).colorScheme.surface;

        }
        return Theme.of(context).colorScheme.onSurfaceVariant;

      }

}
