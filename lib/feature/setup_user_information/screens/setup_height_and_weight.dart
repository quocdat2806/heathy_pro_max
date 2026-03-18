import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';

class SetupHeightAndWeightScreen extends StatefulWidget {
  const SetupHeightAndWeightScreen({super.key});

  @override
  SetupHeightAndWeightScreenState createState() =>
      SetupHeightAndWeightScreenState();
}

class SetupHeightAndWeightScreenState
    extends State<SetupHeightAndWeightScreen> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.largeSpace,
        children: [
          InputCard(
            value: context.read<SetupUserInformationBloc>().state.height,
            label: 'Chiều cao (cm)',
            controller: heightController,
            hintText: 'Nhập chiều cao',
            min: 100,
            max: 250,
            unit: 'cm',
            onChanged: (value) {
              context.read<SetupUserInformationBloc>().add(
                SetupUserInformationEvent.setHeight(value),
              );
            },
          ),
          InputCard(
            controller: weightController,
            hintText: 'Nhập cân nặng',
            label: 'Cân nặng (kg)',
            value: context.read<SetupUserInformationBloc>().state.weight,
            min: 30,
            max: 250,
            unit: 'kg',
            onChanged: (value) {
              context.read<SetupUserInformationBloc>().add(
                SetupUserInformationEvent.setWeight(value),
              );
            },
          ),
        ],
      ),
    );
  }
}
