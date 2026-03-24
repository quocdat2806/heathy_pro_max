import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

import '../widgets/body_in_fat.dart';

class TargetBodyInFatScreen extends StatelessWidget {
  final TextEditingController targetBodyFatController;
  const TargetBodyInFatScreen({
    super.key,
    required this.targetBodyFatController,
  });

  @override
  Widget build(BuildContext context) {
    final targetBodyFat = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.targetBodyFat,
    );
    final levelText = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.targetBodyFatLevel,
    );
    final targetWeight = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.targetWeight,
    );
    final bodyFatText = '${targetBodyFat.toStringAsFixed(0)}%';

    return SingleChildScrollView(
      child: Column(
        spacing: AppDimens.largeSpace,
        children: [
          AppCard(
            child: BodyInFat(
              title: 'Tỷ lệ mỡ mong muốn',
              bodyFatText: bodyFatText,
              levelText: levelText,
              currentBodyFat: targetBodyFat,
              onChanged: (value) {
                context.read<SetupUserInformationBloc>().add(
                  SetupUserInformationEvent.setTargetBodyFat(value),
                );
              },
            ),
          ),

          InputCard(
            controller: targetBodyFatController,
            hintText: 'Nhập cân nặng mong muốn',
            label: 'Cân nặng mong muốn (kg)',
            value: targetWeight,
            min: 10,
            max: 100,
            unit: 'kg',
            onChanged: (value) {
              context.read<SetupUserInformationBloc>().add(
                SetupUserInformationEvent.setTargetWeight(value),
              );
            },
          ),
        ],
      ),
    );
  }
}
