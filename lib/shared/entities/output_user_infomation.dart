import 'package:freezed_annotation/freezed_annotation.dart';
part 'output_user_infomation.freezed.dart';
part 'output_user_infomation.g.dart';

@freezed
abstract class OutputUserInfomation with _$OutputUserInfomation {
  const factory OutputUserInfomation({
    required double bmi, // Body Mass Index
    required String bmiCategory, // Body Mass Index Category
    required double bmiPrime, // Body Mass Index Prime
    required double fatMassKg, // Fat Mass in kg
    required double leanMassKg, // Lean Mass in kg
    required double muscleMassKg, // Muscle Mass in kg
    required double boneMassKg, // Bone Mass in kg
    required double waterMassKg,
    required double currentBodyFatPercent, // Current Body Fat Percent
    required double bmr, // Basal Metabolic Rate
    required double tdee, // Total Daily Energy Expenditure (sedentary)
    required double tdeeModerate, // TDEE moderate activity
    required double targetFatMassKg, // Target Fat Mass in kg
    required double targetLeanMassKg, // Target Lean Mass in kg
    required double fatToLoseKg, // Fat to Lose in kg
    required double weightChangeKg,
    required double targetWeightKg,
    required double targetBodyFatPercent,

    // --- Thời gian & lộ trình ---
    required int estimatedWeeksToGoal, // Estimated Weeks to Goal
    required double weeklyCalorieAdjustment, // Weekly Calorie Adjustment
    required double dailyCalorieAdjustment, // Daily Calorie Adjustment
    required double dailyCaloriesRecommended, // Daily Calories Recommended
    required double dailyProteinG, // Daily Protein in grams
    required double dailyCarbG, // Daily Carb in grams
    required double dailyFatG, // Daily Fat in grams
    // --- Đánh giá & lời khuyên ---
    required String bodyFatCategory, // Body Fat Category
    required String overallConclusion, // Overall Conclusion
    required List<String> advices, // Advices
    required List<String> warnings, // Warnings
    required String dietPlan, // Diet Plan
    required String trainingPlan, // Training Plan
    required double ffmi, // Fat-Free Mass Index
    required String ffmiCategory,
  }) = _OutputUserInfomation;
  factory OutputUserInfomation.fromJson(Map<String, dynamic> json) =>
      _$OutputUserInfomationFromJson(json);
}
