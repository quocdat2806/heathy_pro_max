import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/core/navigation/index.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';
import 'index.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SetupUserInformationScreen extends StatefulWidget {
  const SetupUserInformationScreen({super.key});

  @override
  State<SetupUserInformationScreen> createState() =>
      _SetupUserInformationScreenChildState();
}

class _SetupUserInformationScreenChildState
    extends State<SetupUserInformationScreen> {
  final PageController _pageController = PageController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _targetWeightController = TextEditingController();

  int totalSteps = SetupUserInformationStep.values.length;

  void _onStepChanged(int stepIndex, bool isCompleted) {
    if (isCompleted) {
      // go() thay vì push() để xóa hết stack, user không back lại được setup
      AppNavigator(context: context).go(AppRoutePaths.main);
      return;
    }
    _pageController.animateToPage(
      stepIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _ageController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _targetWeightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SetupUserInformationBloc, SetupUserInformationState>(
      listenWhen: (previous, current) =>
          previous.step != current.step ||
          previous.isSetupInformationCompleted !=
              current.isSetupInformationCompleted,

      listener: (_, state) =>
          _onStepChanged(state.step.index, state.isSetupInformationCompleted),
      child: BlocBuilder<SetupUserInformationBloc, SetupUserInformationState>(
        builder: (context, state) {
          return Scaffold(
            body: ColoredBox(
              color: AppColorConstant.green50,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.defaultSpace,
                  ),
                  child: Column(
                    children: [
                      if (state.step !=
                          SetupUserInformationStep.setupGenderAndAge)
                        Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () =>
                                context.read<SetupUserInformationBloc>().add(
                                  const SetupUserInformationEvent.previousStep(),
                                ),
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                      _buildHeader(state.step),
                      Expanded(child: _buildPageView()),
                      _buildNextButton(state.isNextButtonDisabled),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader(SetupUserInformationStep step) {
    final currentStepIndex = step.index;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.largeSpace),
      child: Column(
        spacing: AppDimens.smallSpace,
        children: [
          RoundedContainer(
            child: SvgPicture.asset(
              AppImages.leafSvgs,
              width: AppDimens.svgSizeExtraLarge,
              colorFilter: const ColorFilter.mode(
                AppColorConstant.white,
                BlendMode.srcIn,
              ),
            ),
          ),

          Text('Thiết lập hồ sơ', style: context.title),
          Text(
            'Bước ${currentStepIndex + 1} / $totalSteps – ${step.title}',
            style: context.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        SetupGenderAndAgeScreen(ageController: _ageController),
        SetupHeightAndWeightScreen(
          heightController: _heightController,
          weightController: _weightController,
        ),
        CurrentBodyInFatScreen(),
        MovementTimeScreen(),
        YourGoalScreen(),
        TargetBodyInFatScreen(targetBodyFatController: _targetWeightController),
        DevelopmentSpeedScreen(),
        ResultInfomationScreen(),
      ],
    );
  }

  Widget _buildNextButton(bool isDisabled) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDimens.defaultSpace),
      child: AppButton(
        onPressed: () => context.read<SetupUserInformationBloc>().add(
          const SetupUserInformationEvent.nextStep(),
        ),
        width: double.infinity,
        borderRadius: AppDimens.largeBorderRadius,
        text: 'Tiếp theo',
        fontWeight: FontWeight.w700,
        fontSize: 14.sp,
        disabled: isDisabled,
      ),
    );
  }
}
