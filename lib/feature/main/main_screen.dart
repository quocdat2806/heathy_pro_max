import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/enums/index.dart';
import 'package:healthy_fitness_pro/feature/home/home_screen.dart';
import 'package:healthy_fitness_pro/feature/main/blocs/main_bloc.dart';
import 'package:healthy_fitness_pro/feature/main/blocs/main_event.dart';
import 'package:healthy_fitness_pro/feature/main/blocs/main_state.dart';
import 'package:healthy_fitness_pro/feature/main/widgets/add_food_button.dart';

import 'widgets/bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Map<int, Widget> _pageCache = {};

  final Set<int> _initializedPages = {};

  Widget _buildPage(int index) {
    if (_pageCache.containsKey(index)) {
      return _pageCache[index]!;
    }

    Widget page;
    switch (index) {
      case 0:
        page = _KeepAliveWrapper(child: HomeScreen());
        break;
      case 1:
        page = const _KeepAliveWrapper(child: HomeScreen());
        break;
      case 2:
        page = const _KeepAliveWrapper(child: HomeScreen());
        break;
      case 3:
        page = const _KeepAliveWrapper(child: HomeScreen());
        break;
      default:
        page = const SizedBox.shrink();
    }

    _pageCache[index] = page;
    _initializedPages.add(index);
    return page;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        final int currentIndex = state.selectedIndex;
        return Scaffold(
          backgroundColor: AppColorConstant.green50,
          body: SafeArea(
            bottom: false,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                _buildContent(currentIndex: currentIndex),
                _buildBottomNavigationBar(currentIndex: currentIndex),
                _buildAddTransactionButton(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContent({required int currentIndex}) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: AppDimens.bottomNavigationHeight,
        ),
        child: IndexedStack(
          index: currentIndex,
          children: List.generate(MainTabs.totalTypes, (index) {
            if (index == currentIndex || _initializedPages.contains(index)) {
              return _buildPage(index);
            }
            return const SizedBox.shrink();
          }),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar({required int currentIndex}) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: MainBottomNavigationBar(
        currentIndex: currentIndex,
        onTabSelected: (i) {
          context.read<MainBloc>().add(MainSwitchTab(i));
        },
      ),
    );
  }

  Widget _buildAddTransactionButton() {
    return const Positioned(
      bottom: AppDimens.topAddTransactionButtonOffset,
      left: 0,
      right: 0,
      child: Center(child: AddFoodButton()),
    );
  }
}

class _KeepAliveWrapper extends StatefulWidget {
  final Widget child;

  const _KeepAliveWrapper({required this.child});

  @override
  State<_KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<_KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
