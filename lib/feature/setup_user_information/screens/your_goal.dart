import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';

class YourGoalScreen extends StatelessWidget {
  const YourGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final goal = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.goal,
    );
    return Column(
      spacing: AppDimens.defaultSpace,
      children: [
        CardSection(
          isSelected: goal == Goal.loseWeight,
          icon: Text("🔥"),
          title: 'Giảm cân',
          description: 'Giảm mỡ,giữ cơ',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setGoal(Goal.loseWeight),
            );
          },
        ),
        CardSection(
          isSelected: goal == Goal.maintainWeight,
          icon: Text("⚖️"),
          title: 'Duy trì ',
          description: 'Giữ cân nặng ổn định',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setGoal(Goal.maintainWeight),
            );
          },
        ),
        CardSection(
          isSelected: goal == Goal.gainWeight,
          icon: Text("💪"),
          title: 'Tăng cân',
          description: 'Tăng cơ,tăng khối lượng',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setGoal(Goal.gainWeight),
            );
          },
        ),
      ],
    );
  }
}
