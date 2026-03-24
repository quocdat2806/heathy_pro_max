import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class _GenderOption extends StatelessWidget {
  final String label;
  final String emoji;
  final bool isSelected;
  final VoidCallback onTap;

  const _GenderOption({
    required this.label,
    required this.emoji,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = isSelected
        ? AppColorConstant.green500
        : AppColorConstant.green200;

    final backgroundColor = isSelected
        ? AppColorConstant.green50
        : AppColorConstant.white;

    return InkWell(
      borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppDimens.defaultSpace),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
        ),
        child: Column(
          children: [
            Text(emoji, style: context.body),
            Text(label, style: context.bodySmall),
          ],
        ),
      ),
    );
  }
}

class _GenderSection extends StatelessWidget {
  final Gender? selectedGender;

  const _GenderSection({required this.selectedGender});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        spacing: AppDimens.defaultSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Giới tính', style: context.body),
          Row(
            spacing: AppDimens.defaultSpace,
            children: [
              Expanded(
                child: _GenderOption(
                  label: 'Nam',
                  emoji: '👨',
                  isSelected: selectedGender == Gender.male,
                  onTap: () => _onSelect(context, Gender.male),
                ),
              ),
              Expanded(
                child: _GenderOption(
                  label: 'Nữ',
                  emoji: '👩',
                  isSelected: selectedGender == Gender.female,
                  onTap: () => _onSelect(context, Gender.female),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onSelect(BuildContext context, Gender gender) {
    context.read<SetupUserInformationBloc>().add(
      SetupUserInformationEvent.setGender(gender),
    );
  }
}

class _AgeSection extends StatelessWidget {
  final TextEditingController controller;
  final int? age;

  const _AgeSection({required this.controller, required this.age});

  @override
  Widget build(BuildContext context) {
    return InputCard(
      controller: controller,
      hintText: 'Nhập tuổi',
      label: 'Tuổi',
      value: age?.toString() ?? '',
      min: 10,
      max: 100,
      unit: 'tuổi',
      onChanged: (value) {
        context.read<SetupUserInformationBloc>().add(
          SetupUserInformationEvent.setAge(value),
        );
      },
    );
  }
}

class SetupGenderAndAgeScreen extends StatelessWidget {
  final TextEditingController ageController;
  const SetupGenderAndAgeScreen({super.key, required this.ageController});

  @override
  Widget build(BuildContext context) {
    final gender = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.gender,
    );

    final age = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.age,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _GenderSection(selectedGender: gender),
          const SizedBox(height: AppDimens.largeSpace),
          _AgeSection(controller: ageController, age: int.tryParse(age)),
        ],
      ),
    );
  }
}
