enum SetupUserInformationStep {
  setupGenderAndAge,
  setUpHeightAndWeight,
  currentBodyFat,
  movementTime,
  yourGoal,
  targetBodyFat,
  developmentSpeed,
  resultInformation,
}

extension SetupUserInformationStepExtension on SetupUserInformationStep {
  String get title {
    switch (this) {
      case SetupUserInformationStep.setupGenderAndAge:
        return 'Giới tính & Tuổi';
      case SetupUserInformationStep.setUpHeightAndWeight:
        return 'Chiều cao & Cân nặng';
      case SetupUserInformationStep.yourGoal:
        return 'Mục tiêu của bạn';
      case SetupUserInformationStep.movementTime:
        return 'Thời gian vận động';
      case SetupUserInformationStep.currentBodyFat:
        return 'Tỷ lệ mỡ hiện tại';
      case SetupUserInformationStep.targetBodyFat:
        return 'Mục tiêu cân nặng';
      case SetupUserInformationStep.developmentSpeed:
        return 'Tốc độ phát triển';
      case SetupUserInformationStep.resultInformation:
        return 'Thông tin kết quả';
    }
  }
}

extension SetupUserInformationStepIndexExtension on SetupUserInformationStep {
  int get index {
    return SetupUserInformationStep.values.indexOf(this);
  }
}
