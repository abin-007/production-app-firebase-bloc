import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:production_ready_app/feature/game/presentation/bloc/game_bloc.dart';

class AttemptsWidget extends StatelessWidget {
  const AttemptsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc,GameState>(
      builder: (context,state){
        return Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.9,
            child: ListView.builder(
              itemBuilder: (context,state){
                return AttemptRowWidget();
              }
              ),

          ),
        );

      });
  }
}