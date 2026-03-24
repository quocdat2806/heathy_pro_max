import 'dart:math';

import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';

class BodyAssessmentCalculator {
  BodyAssessmentCalculator._();

  /// Hàm chính tính toán toàn bộ thể trạng
  static OutputUserInfomation calculate(InputUserInfomation input) {
    // --- 1. Phân bổ khối lượng cơ thể (cần trước để tính FFMI) ---
    final fatMassKg = input.weightKg * (input.currentBodyFatPercent / 100.0);
    final leanMassKg = input.weightKg - fatMassKg;
    final muscleMassKg = leanMassKg * 0.72;
    final boneMassKg = leanMassKg * 0.15;
    final waterMassKg = input.weightKg * 0.60;

    // --- 2. BMI + FFMI ---
    final heightM = input.heightCm / 100.0;
    final bmi = input.weightKg / (heightM * heightM);
    final bmiPrime = bmi / 25.0;
    final ffmi = leanMassKg / (heightM * heightM);
    final ffmiCategory = _ffmiCategory(ffmi, input.gender);

    // Phân loại BMI kết hợp body fat + FFMI (chính xác hơn BMI thuần)
    final bmiCategory = _classifyBodyComposition(
      bmi: bmi,
      bodyFatPercent: input.currentBodyFatPercent,
      ffmi: ffmi,
      gender: input.gender,
    );

    // --- 3. BMR (Mifflin-St Jeor) ---
    final double bmr;
    if (input.gender == Gender.male) {
      bmr = 10 * input.weightKg + 6.25 * input.heightCm - 5 * input.age + 5;
    } else {
      bmr = 10 * input.weightKg + 6.25 * input.heightCm - 5 * input.age - 161;
    }

    // --- 4. TDEE ---
    const sedentaryFactor = 1.2;
    const moderateFactor = 1.55;
    final tdee = bmr * sedentaryFactor;
    final tdeeModerate = bmr * moderateFactor;

    // --- 5. Phân loại mỡ cơ thể ---
    final bodyFatCategory = _bodyFatCategory(
      input.currentBodyFatPercent,
      input.gender,
      input.age,
    );

    // --- 6. Khối lượng mỡ và nạc mục tiêu ---
    final targetFatMassKg =
        input.targetWeightKg * (input.targetBodyFatPercent / 100.0);
    final targetLeanMassKg = input.targetWeightKg - targetFatMassKg;
    final fatToLoseKg = targetFatMassKg - fatMassKg;
    final weightChangeKg = input.targetWeightKg - input.weightKg;

    // --- 7. Tốc độ & Calo ---
    // 1 kg mỡ ≈ 7700 kcal
    const double calPerKgFat = 7700;
    // 1 kg cơ ≈ 5000 kcal (cần surplus để tổng hợp)
    const double calPerKgMuscle = 5000;

    final double weeklyRateKg;
    switch (input.developmentSpeed) {
      case DevelopmentSpeed.low:
        weeklyRateKg = 0.25;
        break;
      case DevelopmentSpeed.medium:
        weeklyRateKg = 0.5;
        break;
      case DevelopmentSpeed.high:
        weeklyRateKg = 0.75;
        break;
    }

    final double totalChange = weightChangeKg.abs();
    final int estimatedWeeks = totalChange < 0.1
        ? 0
        : (totalChange / weeklyRateKg).ceil();

    final double calPerKg = input.goal == Goal.gainWeight
        ? calPerKgMuscle
        : calPerKgFat;

    final double weeklyCalorieAdjustment =
        weeklyRateKg * calPerKg * (input.goal == Goal.loseWeight ? -1 : 1);
    final double dailyCalorieAdjustment = weeklyCalorieAdjustment / 7.0;
    final double dailyCaloriesRecommended =
        tdeeModerate + dailyCalorieAdjustment;

    // --- 8. Macro dinh dưỡng ---
    // Protein: 1.8-2.2g/kg cân nạc
    final double proteinMultiplier = input.goal == Goal.gainWeight ? 2.2 : 2.0;
    final double dailyProteinG = leanMassKg * proteinMultiplier;
    // Fat: 27% tổng calo
    final double dailyFatG = (dailyCaloriesRecommended * 0.27) / 9.0;
    // Carbs: phần còn lại
    final double calFromProtein = dailyProteinG * 4;
    final double calFromFat = dailyFatG * 9;
    final double calFromCarb =
        dailyCaloriesRecommended - calFromProtein - calFromFat;
    final double dailyCarbG = max(0, calFromCarb / 4.0);

    // --- 9. Cảnh báo ---
    final warnings = <String>[];
    if (dailyCaloriesRecommended < 1200 && input.gender == Gender.female) {
      warnings.add(
        'Lượng calo khuyến nghị thấp hơn 1200 kcal. Hãy tham khảo chuyên gia dinh dưỡng.',
      );
    }
    if (dailyCaloriesRecommended < 1500 && input.gender == Gender.male) {
      warnings.add(
        'Lượng calo khuyến nghị thấp hơn 1500 kcal. Hãy tham khảo chuyên gia dinh dưỡng.',
      );
    }
    if (input.developmentSpeed == DevelopmentSpeed.high &&
        input.goal == Goal.loseWeight) {
      warnings.add(
        'Tốc độ giảm cân nhanh (>0.75 kg/tuần) có thể gây mất cơ. Cần tăng cường tập kháng lực.',
      );
    }
    if (input.currentBodyFatPercent < _essentialFat(input.gender)) {
      warnings.add(
        'Tỉ lệ mỡ hiện tại thấp hơn mức thiết yếu. Đây là dấu hiệu nguy hiểm cho sức khỏe!',
      );
    }
    if (bmi > 35) {
      warnings.add(
        'BMI > 35 là mức béo phì độ III. Nên tham khảo bác sĩ trước khi bắt đầu chế độ ăn kiêng.',
      );
    }

    // --- 10. Kết luận & lời khuyên ---
    final conclusion = _buildConclusion(
      input: input,
      bmi: bmi,
      bmiCategory: bmiCategory,
      bodyFatCategory: bodyFatCategory,
      fatMassKg: fatMassKg,
      leanMassKg: leanMassKg,
      estimatedWeeks: estimatedWeeks,
    );

    final advices = _buildAdvices(
      input: input,
      bmi: bmi,
      fatMassKg: fatMassKg,
      leanMassKg: leanMassKg,
      dailyProteinG: dailyProteinG,
    );

    final trainingPlan = _buildTrainingPlan(input.goal, input.developmentSpeed);
    final dietPlan = _buildDietPlan(
      input.goal,
      dailyCaloriesRecommended,
      dailyProteinG,
      dailyCarbG,
      dailyFatG,
    );

    return OutputUserInfomation(
      bmi: bmi,
      ffmi: ffmi,
      ffmiCategory: ffmiCategory,
      currentBodyFatPercent: input.currentBodyFatPercent,
      bmiCategory: bmiCategory,
      bmiPrime: bmiPrime,
      fatMassKg: fatMassKg,
      leanMassKg: leanMassKg,
      muscleMassKg: muscleMassKg,
      boneMassKg: boneMassKg,
      waterMassKg: waterMassKg,
      bmr: bmr,
      tdee: tdee,
      tdeeModerate: tdeeModerate,
      targetFatMassKg: targetFatMassKg,
      targetLeanMassKg: targetLeanMassKg,
      targetWeightKg: input.targetWeightKg,
      targetBodyFatPercent: input.targetBodyFatPercent,
      fatToLoseKg: fatToLoseKg,
      weightChangeKg: weightChangeKg,
      estimatedWeeksToGoal: estimatedWeeks,
      weeklyCalorieAdjustment: weeklyCalorieAdjustment,
      dailyCalorieAdjustment: dailyCalorieAdjustment,
      dailyCaloriesRecommended: dailyCaloriesRecommended,
      dailyProteinG: dailyProteinG,
      dailyCarbG: dailyCarbG,
      dailyFatG: dailyFatG,
      bodyFatCategory: bodyFatCategory,
      overallConclusion: conclusion,
      advices: advices,
      warnings: warnings,
      dietPlan: dietPlan,
      trainingPlan: trainingPlan,
    );
  }

  // ──────────────────────────────────────────────────────────
  // PRIVATE HELPERS
  // ──────────────────────────────────────────────────────────

  /// Phân loại BMI kết hợp body fat % + FFMI
  /// Chính xác hơn BMI thuần vì phân biệt được cơ nhiều vs mỡ nhiều
  static String _classifyBodyComposition({
    required double bmi,
    required double bodyFatPercent,
    required double ffmi,
    required Gender gender,
  }) {
    // Ngưỡng body fat được coi là "béo" theo giới tính
    final fatThreshold = gender == Gender.male ? 25.0 : 32.0;
    final fatHigh = bodyFatPercent >= fatThreshold;
    final bmiHigh = bmi >= 25.0;

    // Không béo theo cả 2 chỉ số
    if (!bmiHigh && !fatHigh) return 'Cân đối';

    // BMI cao nhưng mỡ không cao → cơ bắp nhiều làm tăng cân
    if (bmiHigh && !fatHigh) return 'Cơ bắp tốt';

    // BMI bình thường nhưng mỡ cao → "skinny fat", nguy hiểm nhất
    if (!bmiHigh && fatHigh) return 'Béo ẩn (Skinny Fat)';

    // Cả 2 đều cao → béo thật, phân độ theo body fat %
    if (gender == Gender.male) {
      if (bodyFatPercent < 30) return 'Thừa cân';
      if (bodyFatPercent < 35) return 'Béo phì độ I';
      return 'Béo phì độ II';
    } else {
      if (bodyFatPercent < 38) return 'Thừa cân';
      if (bodyFatPercent < 43) return 'Béo phì độ I';
      return 'Béo phì độ II';
    }
  }

  /// FFMI (Fat-Free Mass Index) — đánh giá khối lượng cơ so với chiều cao
  static String _ffmiCategory(double ffmi, Gender gender) {
    if (gender == Gender.male) {
      if (ffmi < 17) return 'Thiếu cơ';
      if (ffmi < 19) return 'Trung bình';
      if (ffmi < 21) return 'Tốt';
      if (ffmi < 23) return 'Rất tốt';
      return 'Xuất sắc';
    } else {
      if (ffmi < 14) return 'Thiếu cơ';
      if (ffmi < 16) return 'Trung bình';
      if (ffmi < 18) return 'Tốt';
      if (ffmi < 20) return 'Rất tốt';
      return 'Xuất sắc';
    }
  }

  static double _essentialFat(Gender gender) =>
      gender == Gender.male ? 3.0 : 10.0;

  static String _bodyFatCategory(double fatPercent, Gender gender, int age) {
    if (gender == Gender.male) {
      if (fatPercent < 6) return 'Mỡ thiết yếu';
      if (fatPercent < 14) return 'Tuyệt vời';
      if (fatPercent < 18) return 'Thể hình tốt';
      if (fatPercent < 25) return 'Trung bình';
      if (fatPercent < 30) return 'Hơi thừa mỡ';
      return 'Béo phì';
    } else {
      if (fatPercent < 14) return 'Mỡ thiết yếu';
      if (fatPercent < 21) return 'Tuyệt vời';
      if (fatPercent < 25) return 'Thể hình tốt';
      if (fatPercent < 32) return 'Trung bình';
      if (fatPercent < 38) return 'Hơi thừa mỡ';
      return 'Béo phì';
    }
  }

  static String _buildConclusion({
    required InputUserInfomation input,
    required double bmi,
    required String bmiCategory,
    required String bodyFatCategory,
    required double fatMassKg,
    required double leanMassKg,
    required int estimatedWeeks,
  }) {
    final goalText = switch (input.goal) {
      Goal.loseWeight => 'GIẢM MỠ & GIỮ CƠ',
      Goal.maintainWeight => 'DUY TRÌ CÂN NẶNG ỔN ĐỊNH',
      Goal.gainWeight => 'TĂNG CƠ & TĂNG KHỐI LƯỢNG',
    };

    final speedText = switch (input.developmentSpeed) {
      DevelopmentSpeed.low => 'chậm (an toàn, bền vững)',
      DevelopmentSpeed.medium => 'trung bình (hiệu quả cân bằng)',
      DevelopmentSpeed.high => 'nhanh (cần kỷ luật cao)',
    };

    return 'Với chiều cao ${input.heightCm.toStringAsFixed(0)} cm và cân nặng '
        '${input.weightKg.toStringAsFixed(1)} kg, BMI của bạn là '
        '${bmi.toStringAsFixed(1)} – thuộc nhóm "$bmiCategory". '
        'Tỉ lệ mỡ ${input.currentBodyFatPercent.toStringAsFixed(1)}% '
        'được xếp loại "$bodyFatCategory". '
        'Mục tiêu của bạn là $goalText với tốc độ $speedText. '
        '${estimatedWeeks > 0 ? 'Ước tính bạn sẽ đạt mục tiêu trong khoảng $estimatedWeeks tuần '
                  '(${(estimatedWeeks / 4.33).toStringAsFixed(1)} tháng) '
                  'nếu tuân thủ nghiêm ngặt kế hoạch dinh dưỡng và tập luyện.' : 'Bạn đã gần đạt mục tiêu!'}';
  }

  static List<String> _buildAdvices({
    required InputUserInfomation input,
    required double bmi,
    required double fatMassKg,
    required double leanMassKg,
    required double dailyProteinG,
  }) {
    final advices = <String>[
      'Uống đủ 35–40 ml nước/kg cân nặng mỗi ngày (khoảng '
          '${(input.weightKg * 0.037).toStringAsFixed(1)} lít/ngày).',
      'Ngủ đủ 7–9 tiếng mỗi đêm – đây là yếu tố phục hồi và điều hòa hormone quan trọng nhất.',
      'Theo dõi cân nặng vào buổi sáng sau khi đi vệ sinh, trước khi ăn, mỗi tuần 1–2 lần.',
    ];

    switch (input.goal) {
      case Goal.loseWeight:
        advices.addAll([
          'Ưu tiên thực phẩm có chỉ số no cao: rau xanh, protein nạc, ngũ cốc nguyên hạt.',
          'Không bỏ bữa sáng – ăn bữa sáng giàu protein giúp kiểm soát cơn thèm ăn cả ngày.',
          'Tập kháng lực (gym/calisthenics) ít nhất 3 buổi/tuần để bảo toàn cơ bắp trong quá trình giảm cân.',
          'Tránh cắt giảm calo quá đột ngột; giảm từ từ để tránh mất cơ và rebound.',
          'Theo dõi lượng calo nạp vào bằng app (MyFitnessPal, Cronometer) ít nhất trong 4–6 tuần đầu.',
        ]);
        break;

      case Goal.maintainWeight:
        advices.addAll([
          'Duy trì thói quen tập luyện 3–5 buổi/tuần kết hợp cardio và kháng lực.',
          'Ăn đa dạng thực phẩm nguyên chất, hạn chế thực phẩm chế biến sẵn và đường tinh luyện.',
          'Kiểm tra cân nặng định kỳ và điều chỉnh lượng ăn nếu có sự thay đổi ±1 kg so với mục tiêu.',
          'Duy trì tỉ lệ mỡ trong khoảng lý tưởng bằng cách kết hợp ăn lành mạnh và vận động đều đặn.',
        ]);
        break;

      case Goal.gainWeight:
        advices.addAll([
          'Ưu tiên tập kháng lực (progressive overload) – đây là kích thích chính để xây dựng cơ bắp.',
          'Ăn surplus calo ở mức vừa phải (250–500 kcal/ngày) để tăng cơ tối thiểu mỡ.',
          'Nạp protein đều trải ra 4–5 bữa/ngày để tối ưu hóa tổng hợp protein cơ bắp.',
          'Ngủ đủ giấc và tránh stress – cortisol cao ức chế testosterone và cản trở tăng cơ.',
          'Cân nhắc thêm creatine monohydrate (3–5g/ngày) – đây là supplement được khoa học chứng minh hiệu quả nhất.',
        ]);
        break;
    }

    if (input.age >= 40) {
      advices.add(
        'Ở độ tuổi ${input.age}, cơ thể phục hồi chậm hơn – hãy chú trọng warm-up, giãn cơ, và tăng tải từ từ.',
      );
    }
    if (input.gender == Gender.female) {
      advices.add(
        'Phụ nữ cần chú ý bổ sung canxi (1000–1200 mg/ngày) và sắt để hỗ trợ mật độ xương và năng lượng.',
      );
    }

    return advices;
  }

  static String _buildTrainingPlan(Goal goal, DevelopmentSpeed speed) {
    final int sessionsPerWeek = switch (speed) {
      DevelopmentSpeed.low => 3,
      DevelopmentSpeed.medium => 4,
      DevelopmentSpeed.high => 5,
    };

    return switch (goal) {
      Goal.loseWeight =>
        '$sessionsPerWeek buổi/tuần:\n'
            '• ${(sessionsPerWeek * 0.6).round()} buổi Kháng lực (Gym/Calisthenics): '
            'Full body hoặc Upper/Lower split, 3–4 set × 8–12 rep, nghỉ 60–90 giây.\n'
            '• ${sessionsPerWeek - (sessionsPerWeek * 0.6).round()} buổi Cardio: HIIT 20–25 phút '
            'HOẶC Steady-state (đi bộ nhanh, đạp xe) 40–50 phút.\n'
            '• Mỗi buổi nên có 5–10 phút warm-up động và 5–10 phút cool-down tĩnh.\n'
            '• Ưu tiên compound exercises: Squat, Deadlift, Bench Press, Row, Pull-up.',

      Goal.maintainWeight =>
        '$sessionsPerWeek buổi/tuần:\n'
            '• 2–3 buổi Kháng lực: Duy trì sức mạnh và khối lượng cơ với 3–5 set × 6–10 rep.\n'
            '• 1–2 buổi Cardio nhẹ nhàng: đi bộ, bơi lội, đạp xe 30–45 phút.\n'
            '• Có thể thêm 1 buổi yoga hoặc stretching để linh hoạt và phục hồi.\n'
            '• Giữ nguyên tắc progressive overload để tránh thoái hóa thể lực.',

      Goal.gainWeight =>
        '$sessionsPerWeek buổi/tuần:\n'
            '• Tập kháng lực nặng: 4–5 set × 6–8 rep với tải trọng 75–85% 1RM.\n'
            '• Chương trình gợi ý: Push/Pull/Legs split hoặc Upper/Lower 4 ngày.\n'
            '• Compound first: Squat, Deadlift, Bench Press, Overhead Press, Barbell Row.\n'
            '• Progressive overload: tăng tạ 2.5 kg hoặc thêm 1–2 rep mỗi tuần.\n'
            '• Cardio nhẹ (2×/tuần, 20 phút) để duy trì sức khỏe tim mạch.\n'
            '• Nghỉ đủ: ít nhất 48 giờ giữa 2 buổi tập cùng nhóm cơ.',
    };
  }

  static String _buildDietPlan(
    Goal goal,
    double dailyCal,
    double proteinG,
    double carbG,
    double fatG,
  ) {
    final cal = dailyCal.toStringAsFixed(0);
    final prot = proteinG.toStringAsFixed(0);
    final carb = carbG.toStringAsFixed(0);
    final fat = fatG.toStringAsFixed(0);

    final base =
        'Tổng calo/ngày: $cal kcal | Protein: ${prot}g | Carbs: ${carb}g | Fat: ${fat}g\n\n';

    return base +
        switch (goal) {
          Goal.loseWeight =>
            'Thực phẩm nên ăn: ức gà, cá, trứng, tôm, đậu hũ, rau xanh, bông cải, '
                'yến mạch, gạo lứt, khoai lang, dầu ô liu, bơ, hạt chia.\n'
                'Thực phẩm hạn chế: cơm trắng nhiều, bánh mì trắng, đồ ngọt, nước có đường, '
                'đồ chiên, thức ăn nhanh, rượu bia.\n'
                'Gợi ý bữa ăn:\n'
                '  • Sáng: 3 quả trứng luộc + yến mạch 80g + trái cây\n'
                '  • Trưa: Cơm gạo lứt 150g + 150g ức gà luộc + rau xanh luộc\n'
                '  • Tối: 200g cá hấp + rau xào ít dầu + salad\n'
                '  • Snack (nếu cần): Greek yogurt không đường hoặc 30g hạt mixed nuts',

          Goal.maintainWeight =>
            'Thực phẩm đa dạng, cân bằng theo tỉ lệ: 40% carbs, 30% protein, 30% fat.\n'
                'Ưu tiên thực phẩm nguyên chất, hạn chế chế biến sẵn.\n'
                'Gợi ý bữa ăn:\n'
                '  • Sáng: Bánh mì nguyên cám + 2 trứng + rau củ\n'
                '  • Trưa: Cơm trắng 200g + thịt heo nạc 150g + canh rau\n'
                '  • Tối: Mì gạo lứt + tôm/cá + rau xanh\n'
                '  • Snack: trái cây tươi, sữa chua',

          Goal.gainWeight =>
            'Thực phẩm nên ăn nhiều: thịt đỏ nạc, cá hồi, trứng (cả lòng đỏ), sữa nguyên kem, '
                'phô mai, các loại hạt, bơ đậu phộng, chuối, khoai tây, gạo trắng, pasta.\n'
                'Ăn 5–6 bữa nhỏ/ngày, không để bụng đói quá 3–4 tiếng.\n'
                'Gợi ý bữa ăn:\n'
                '  • Sáng: 3 quả trứng + 2 lát bánh mì + 1 ly sữa nguyên kem\n'
                '  • Snack sáng: chuối + 30g bơ đậu phộng\n'
                '  • Trưa: Cơm 250g + 200g thịt bò + rau\n'
                '  • Snack chiều (sau tập): Protein shake + chuối\n'
                '  • Tối: Cơm 200g + cá hồi áp chảo + rau xào\n'
                '  • Trước ngủ: 200ml sữa casein hoặc cottage cheese',
        };
  }
}
