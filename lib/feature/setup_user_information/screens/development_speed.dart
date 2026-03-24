import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';

class DevelopmentSpeedScreen extends StatelessWidget {
  const DevelopmentSpeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final developmentSpeed = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.developmentSpeed,
    );
    return Column(
      spacing: AppDimens.defaultSpace,
      children: [
        CardSection(
          isSelected: developmentSpeed == DevelopmentSpeed.high,
          icon: Text("🏃‍♂️"),
          title: 'Nhanh',
          description: 'Đẩy nhanh tốc độ để đạt được mục tiêu',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setDevelopmentSpeed(
                DevelopmentSpeed.high,
              ),
            );
          },
        ),
        CardSection(
          isSelected: developmentSpeed == DevelopmentSpeed.medium,
          icon: Text("🏃‍♂️"),
          title: 'Trung bình',
          description: 'Tốc độ phù hợp với mục tiêu của bạn',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setDevelopmentSpeed(
                DevelopmentSpeed.medium,
              ),
            );
          },
        ),
        CardSection(
          isSelected: developmentSpeed == DevelopmentSpeed.low,
          icon: Text("🏃‍♂️"),
          title: 'Chậm',
          description: 'Tốc độ chậm để đạt được mục tiêu',
          onTap: () {
            context.read<SetupUserInformationBloc>().add(
              SetupUserInformationEvent.setDevelopmentSpeed(
                DevelopmentSpeed.low,
              ),
            );
          },
        ),
      ],
    );
  }
}
