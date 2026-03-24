import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/di/injection.dart';
import 'package:healthy_fitness_pro/core/extensions/index.dart';
import 'package:healthy_fitness_pro/core/helper/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/feature/setup_user_information/index.dart';
import 'package:healthy_fitness_pro/shared/entities/input_user_infomation.dart';
import 'package:healthy_fitness_pro/shared/entities/output_user_infomation.dart';
import 'package:healthy_fitness_pro/shared/repositories/user_preferences_repository.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  InputUserInfomation? _input;
  OutputUserInfomation? _output;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
  }

  Future<void> _loadUserInfo() async {
    final input = await sl<UserPreferencesRepository>().loadInputUserInfo();
    if (!mounted) return;
    setState(() {
      _input = input;
      _output =
          input != null ? BodyAssessmentCalculator.calculate(input) : null;
      _isLoading = false;
    });
  }

  void _navigateToUpdateInfo() {
    if (_input == null) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (_) => SetupUserInformationBloc(
            sl<UserPreferencesRepository>(),
          )..add(LoadExistingData(_input!)),
          child: const SetupUserInformationScreen(),
        ),
      ),
    ).then((_) => _loadUserInfo()); // reload sau khi quay về
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColorConstant.primaryGreen),
      );
    }

    final input = _input;
    final output = _output;

    if (input == null || output == null) {
      return const Center(child: Text('Chưa có thông tin cơ thể'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.defaultSpace,
        vertical: AppDimens.largeSpace,
      ),
      child: Column(
        spacing: AppDimens.defaultSpace,
        children: [
          const SizedBox(height: AppDimens.largeSpace),
          _buildAvatar(context),
          _buildBodyStats(context, input, output),
          _buildGoalStats(context, output),
          _buildUpdateButton(context),
        ],
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return Column(
      spacing: AppDimens.smallSpace,
      children: [
        Container(
          width: AppDimens.superExtraLargeContainerSize,
          height: AppDimens.superExtraLargeContainerSize,
          decoration: const BoxDecoration(
            color: AppColorConstant.lightGreenBg,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.person_rounded,
            color: AppColorConstant.primaryGreen,
            size: AppDimens.superExtraLargeIconSize,
          ),
        ),
        Text(
          'Hồ sơ của tôi',
          style: context.title.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColorConstant.green900,
          ),
        ),
      ],
    );
  }

  Widget _buildBodyStats(
    BuildContext context,
    InputUserInfomation input,
    OutputUserInfomation output,
  ) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.defaultSpace,
        children: [
          Text(
            '📋 Thông số cơ thể',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
          Row(
            spacing: AppDimens.smallSpace,
            children: [
              Expanded(
                child: _buildStatTile(
                  context,
                  icon: Icons.monitor_weight_outlined,
                  label: 'Cân nặng',
                  value: '${input.weightKg.toStringAsFixed(1)} kg',
                ),
              ),
              Expanded(
                child: _buildStatTile(
                  context,
                  icon: Icons.straighten_rounded,
                  label: 'Chiều cao',
                  value: '${input.heightCm.toStringAsFixed(0)} cm',
                ),
              ),
            ],
          ),
          Row(
            spacing: AppDimens.smallSpace,
            children: [
              Expanded(
                child: _buildStatTile(
                  context,
                  icon: Icons.cake_outlined,
                  label: 'Tuổi',
                  value: '${input.age} tuổi',
                ),
              ),
              Expanded(
                child: _buildStatTile(
                  context,
                  icon: Icons.person_outline_rounded,
                  label: 'Giới tính',
                  value: input.gender == Gender.male ? 'Nam' : 'Nữ',
                ),
              ),
            ],
          ),
          Row(
            spacing: AppDimens.smallSpace,
            children: [
              Expanded(
                child: _buildStatTile(
                  context,
                  icon: Icons.local_fire_department_outlined,
                  label: 'Mỡ cơ thể',
                  value: '${input.currentBodyFatPercent.toStringAsFixed(1)}%',
                ),
              ),
              Expanded(
                child: _buildStatTile(
                  context,
                  icon: Icons.analytics_outlined,
                  label: 'BMI',
                  value: output.bmi.toStringAsFixed(1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGoalStats(BuildContext context, OutputUserInfomation output) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.white,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.defaultSpace,
        children: [
          Text(
            '🎯 Mục tiêu dinh dưỡng / ngày',
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
          Row(
            spacing: AppDimens.smallSpace,
            children: [
              Expanded(
                child: _buildNutrientTile(
                  context,
                  label: 'Calo',
                  value:
                      '${output.dailyCaloriesRecommended.toStringAsFixed(0)} kcal',
                  isMain: true,
                ),
              ),
              Expanded(
                child: _buildNutrientTile(
                  context,
                  label: 'Protein',
                  value: '${output.dailyProteinG.toStringAsFixed(0)}g',
                ),
              ),
              Expanded(
                child: _buildNutrientTile(
                  context,
                  label: 'Carbs',
                  value: '${output.dailyCarbG.toStringAsFixed(0)}g',
                ),
              ),
              Expanded(
                child: _buildNutrientTile(
                  context,
                  label: 'Fat',
                  value: '${output.dailyFatG.toStringAsFixed(0)}g',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatTile(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.smallSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.green50,
        borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
      ),
      child: Row(
        spacing: AppDimens.smallSpace,
        children: [
          Container(
            padding: const EdgeInsets.all(AppDimens.extraSmallSpace),
            decoration: const BoxDecoration(
              color: AppColorConstant.lightGreenBg,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColorConstant.primaryGreen, size: AppDimens.defaultIconSize),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: context.caption.copyWith(
                    color: AppColorConstant.greyText,
                  ),
                ),
                Text(
                  value,
                  style: context.caption.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColorConstant.green900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutrientTile(
    BuildContext context, {
    required String label,
    required String value,
    bool isMain = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.smallSpace),
      decoration: BoxDecoration(
        color: isMain
            ? AppColorConstant.lightGreenBg
            : AppColorConstant.green50,
        borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
      ),
      child: Column(
        spacing: AppDimens.extraSmallSpace,
        children: [
          Text(
            value,
            style: context.caption.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.primaryGreen,
              fontSize: 11,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            label,
            style: context.caption.copyWith(
              color: AppColorConstant.greyText,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildUpdateButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppDimens.largeButtonHeight,
      child: ElevatedButton.icon(
        onPressed: _navigateToUpdateInfo,
        icon: const Icon(Icons.edit_rounded, color: AppColorConstant.white, size: AppDimens.defaultIconSize),
        label: Text(
          'Cập nhật thông số cơ thể',
          style: context.bodySmall.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColorConstant.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorConstant.primaryGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.largeButtonBorderRadius),
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
