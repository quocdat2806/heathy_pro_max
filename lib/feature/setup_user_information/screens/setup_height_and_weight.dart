import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';

class SetupHeightAndWeightScreen extends StatelessWidget {
  final TextEditingController heightController;
  final TextEditingController weightController;
  const SetupHeightAndWeightScreen({
    super.key,
    required this.heightController,
    required this.weightController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.largeSpace,
        children: [
          InputCard(
            suffixIcon: SvgPicture.asset(
              AppImages.heightSvgs,
              colorFilter: const ColorFilter.mode(
                AppColorConstant.green800,
                BlendMode.srcIn,
              ),
            ),
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
            suffixIcon: SvgPicture.asset(
              AppImages.weightSvgs,
              colorFilter: const ColorFilter.mode(
                AppColorConstant.green800,
                BlendMode.srcIn,
              ),
            ),

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
