enum FoodCategory {
  all(0, 'Tất cả'),
  liquid(1, 'Đồ nước'),
  fruit(2, 'Trái cây'),
  dry(3, 'Đồ khô'),
  protein(4, 'Đạm/Thịt'),
  snack(5, 'Ăn vặt');

  final int id;
  final String label;
  const FoodCategory(this.id, this.label);

  static FoodCategory fromId(int id) {
    return FoodCategory.values.firstWhere(
      (e) => e.id == id,
      orElse: () => FoodCategory.all,
    );
  }
}
