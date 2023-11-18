import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personaltrainer/riverpod/bottom_nav_bar_riverpod.dart';

final bottomNavBarRiverpod =
    ChangeNotifierProvider((_) => BottomNavBarRiverpod());
