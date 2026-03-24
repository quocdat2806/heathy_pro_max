enum MainTabs {
  home(0, 'Home'),
  calendar(1, 'Calendar'),
  stats(2, 'Stats'),
  profile(3, 'Profile');

  const MainTabs(this.tabIndex, this.label);

  final int tabIndex;
  final String label;

  static MainTabs fromIndex(int index) {
    return MainTabs.values.firstWhere(
      (type) => type.tabIndex == index,
      orElse: () => MainTabs.home,
    );
  }

  static const int totalTypes = 4;
}
