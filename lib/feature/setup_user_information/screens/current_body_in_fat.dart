import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

import '../widgets/body_in_fat.dart';

class CurrentBodyInFatScreen extends StatelessWidget {
  const CurrentBodyInFatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentBodyFat = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.currentBodyFat,
    );
    final levelText = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.currentBodyFatLevel,
    );
    final bodyFatText = '${currentBodyFat.toStringAsFixed(0)}%';

    return Align(
      alignment: Alignment.topCenter,
      child: AppCard(
        child: BodyInFat(
          title: 'Tỷ lệ mỡ hiện tại',
          bodyFatText: bodyFatText,
          levelText: levelText,
          currentBodyFat: currentBodyFat,
          onChanged: (value) {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setCurrentBodyFat(value),
            );
          },
        ),
      ),
    );
  }
}
