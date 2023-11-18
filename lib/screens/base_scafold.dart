import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personaltrainer/components/bottom_bar.dart';
import 'package:personaltrainer/riverpod/riverpod_management.dart';

class BaseScaffold extends ConsumerStatefulWidget {
  const BaseScaffold({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     var watch = ref.watch(bottomNavBarRiverpod);
   
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        title: Text(watch.appbarTitle()),
        actions: <Widget>[
          watch.appbarIcon(),
        ],
      ),
      body: watch.body(),
    );
  }
}
