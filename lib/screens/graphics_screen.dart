import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GraphicsScreen extends ConsumerStatefulWidget {
  const GraphicsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GraphicsScreenState();
}

class _GraphicsScreenState extends ConsumerState<GraphicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
