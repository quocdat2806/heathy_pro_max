import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class ResultInfomationScreen extends StatelessWidget {
  const ResultInfomationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final outputUserInfomation = context.select(
      (SetupUserInformationBloc bloc) => bloc.state.outputUserInfomation,
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      child: Column(
        spacing: AppDimens.defaultSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBMIResult(context, outputUserInfomation),
          _buildBodyCompositionResult(context, outputUserInfomation),
          _buildMetabolismResult(context, outputUserInfomation),
          _buildYourGoalResult(context, outputUserInfomation),
          _buildAdvice(context, outputUserInfomation),
        ],
      ),
    );
  }

  Widget _buildBMIResult(
    BuildContext context,
    OutputUserInfomation outputUserInfomation,
  ) {
    return SizedBox(
      width: double.infinity,
      child: AppCard(
        child: Column(
          spacing: AppDimens.smallSpace,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('📊 Chỉ số BMI', style: context.body),
            Text(
              "Kết luận : ${outputUserInfomation.bmiCategory}",
              style: context.bodySmall,
            ),
            Text(
              "Chỉ số BMI : ${outputUserInfomation.bmi.toStringAsFixed(1)}",
              style: context.bodySmall,
            ),
            Text(
              "Chỉ số BMI Prime : ${outputUserInfomation.bmiPrime.toStringAsFixed(1)}",
              style: context.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBodyCompositionResult(
    BuildContext context,
    OutputUserInfomation outputUserInfomation,
  ) {
    return AppCard(
      child: Column(
        spacing: AppDimens.smallSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('🏋️Thành phần cơ thể', style: context.body),
          AppGrid(
            crossAxisCount: 2,
            itemCount: 7,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: AppDimens.defaultSpace,
            crossAxisSpacing: AppDimens.defaultSpace,
            itemHeightFactor: 0.45,
            itemBuilder: (context, index) {
              final items = <({String label, String value})>[
                (
                  label: 'Khối lượng xương',
                  value: outputUserInfomation.boneMassKg.toStringAsFixed(1),
                ),
                (
                  label: 'Khối lượng nước',
                  value: outputUserInfomation.waterMassKg.toStringAsFixed(1),
                ),
                (
                  label: 'Khối lượng nạc',
                  value: outputUserInfomation.leanMassKg.toStringAsFixed(1),
                ),
                (
                  label: 'Khối lượng mỡ',
                  value: outputUserInfomation.fatMassKg.toStringAsFixed(1),
                ),
                (
                  label: 'Mỡ hiện tại',
                  value: outputUserInfomation.currentBodyFatPercent
                      .toStringAsFixed(1),
                ),
                (
                  label: 'Khối lượng cơ bắp',
                  value: outputUserInfomation.muscleMassKg.toStringAsFixed(1),
                ),
                (
                  label: ' Thể trạng mỡ',
                  value: outputUserInfomation.bodyFatCategory,
                ),
              ];
              final item = items[index];
              return _ResultTile(label: item.label, value: item.value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMetabolismResult(
    BuildContext context,
    OutputUserInfomation outputUserInfomation,
  ) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.smallSpace,
        children: [
          Text('⚡Chuyển hóa', style: context.body),
          AppGrid(
            crossAxisCount: 2,
            itemCount: 7,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: AppDimens.defaultSpace,
            crossAxisSpacing: AppDimens.defaultSpace,
            itemHeightFactor: 0.45,
            itemBuilder: (context, index) {
              final items = <({String label, String value, bool highlighted})>[
                (
                  label: 'BMR',
                  value: outputUserInfomation.bmr.toStringAsFixed(0),
                  highlighted: false,
                ),
                (
                  label: 'TDEE',
                  value: outputUserInfomation.tdeeModerate.toStringAsFixed(0),
                  highlighted: false,
                ),
                (
                  label: 'Mục tiêu/ngày(kcal)',
                  value: outputUserInfomation.dailyCaloriesRecommended
                      .toStringAsFixed(0),
                  highlighted: true,
                ),
                (
                  label: 'Protein/ngày(g)',
                  value: outputUserInfomation.dailyProteinG.toStringAsFixed(0),
                  highlighted: false,
                ),
                (
                  label: 'Carbs/ngày(g)',
                  value: outputUserInfomation.dailyCarbG.toStringAsFixed(0),
                  highlighted: false,
                ),
                (
                  label: 'Fat/ngày(g)',
                  value: outputUserInfomation.dailyFatG.toStringAsFixed(0),
                  highlighted: false,
                ),
                (
                  label:
                      outputUserInfomation.dailyCaloriesRecommended -
                              outputUserInfomation.tdeeModerate <
                          0
                      ? 'Thâm hụt calo'
                      : 'Thừa calo',
                  value:
                      (outputUserInfomation.dailyCaloriesRecommended -
                              outputUserInfomation.tdeeModerate)
                          .abs()
                          .toStringAsFixed(0),
                  highlighted: false,
                ),
              ];
              final item = items[index];
              return _ResultTile(label: item.label, value: item.value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildYourGoalResult(
    BuildContext context,
    OutputUserInfomation outputUserInfomation,
  ) {
    return AppCard(
      child: Column(
        spacing: AppDimens.smallSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('🎯 Mục tiêu của bạn', style: context.body),
          AppGrid(
            crossAxisCount: 2,
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: AppDimens.defaultSpace,
            crossAxisSpacing: AppDimens.defaultSpace,
            itemHeightFactor: 0.45,
            itemBuilder: (context, index) {
              final items = <({String label, String value})>[
                (
                  label: 'Cân nặng(kg)',
                  value: outputUserInfomation.targetWeightKg.toStringAsFixed(1),
                ),
                (
                  label: 'Mỡ(%)',
                  value: outputUserInfomation.targetBodyFatPercent
                      .toStringAsFixed(1),
                ),
                (
                  label: 'Cân thay đổi (kg)',
                  value: outputUserInfomation.weightChangeKg.toStringAsFixed(1),
                ),
                (
                  label: 'Uớc tính (tuần)',
                  value: outputUserInfomation.estimatedWeeksToGoal.toString(),
                ),
              ];
              final item = items[index];
              return _ResultTile(label: item.label, value: item.value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAdvice(
    BuildContext context,
    OutputUserInfomation outputUserInfomation,
  ) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.green50,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
        border: Border.all(color: AppColorConstant.green200),
      ),
      child: Column(
        spacing: AppDimens.smallSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '💡 Lời khuyên',
            style: context.body.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green500,
            ),
          ),

          ...outputUserInfomation.advices.map(
            (e) => Text(e, style: context.bodySmall),
          ),
        ],
      ),
    );
  }
}

class _ResultTile extends StatelessWidget {
  const _ResultTile({required this.label, required this.value, this.border});

  final String label;
  final String value;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorConstant.green50,
        border: border,
        borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: context.caption.copyWith(color: AppColorConstant.green800),
          ),
          Text(
            value,
            textAlign: TextAlign.center,
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
        ],
      ),
    );
  }
}
