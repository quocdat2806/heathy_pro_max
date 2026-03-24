enum MealType {
  breakfast(1, 'Bữa sáng', '🌅'),
  lunch(2, 'Bữa trưa', '☀️'),
  dinner(3, 'Bữa tối', '🌙'),
  snack(4, 'Ăn nhẹ', '🍎');

  final int id;
  final String label;
  final String emoji;

  const MealType(this.id, this.label, this.emoji);

  static MealType fromId(int id) {
    return MealType.values.firstWhere(
      (e) => e.id == id,
      orElse: () => MealType.breakfast,
    );
  }
}
