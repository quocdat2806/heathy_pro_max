import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class MovementTimeScreen extends StatelessWidget {
  const MovementTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movementTime = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.movementTime,
    );
    return Column(
      spacing: AppDimens.defaultSpace,
      children: [
        CardSection(
          isSelected: movementTime == MovementTime.medium,
          icon: Text("🏃‍♂️"),
          title: 'Vận động trung bình',
          description: '150 phút/tuần',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setMovementTime(MovementTime.medium),
            );
          },
        ),
        CardSection(
          isSelected: movementTime == MovementTime.high,
          icon: Text("🏃‍♂️"),
          title: 'Vận động nhiều',
          description: '300 phút/tuần',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setMovementTime(MovementTime.high),
            );
          },
        ),
        CardSection(
          isSelected: movementTime == MovementTime.low,
          icon: Text("🏃‍♂️"),
          title: 'Vận động ít',
          description: '50 phút/tuần',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setMovementTime(MovementTime.low),
            );
          },
        ),
      ],
    );
  }
}
