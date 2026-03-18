enum MainTabs {
  home(0, 'Home'),
  search(1, 'Search'),
  stats(2, 'Stats'),
  practice(3, 'Practice'),
  profile(4, 'Profile');

  const MainTabs(this.tabIndex, this.label);

  final int tabIndex;
  final String label;

  static MainTabs fromIndex(int index) {
    return MainTabs.values.firstWhere(
      (type) => type.tabIndex == index,
      orElse: () => MainTabs.home,
    );
  }

  static const int totalTypes = 5;
}
