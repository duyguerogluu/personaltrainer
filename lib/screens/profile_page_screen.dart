import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePAgeScreen extends ConsumerStatefulWidget {
  const ProfilePAgeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfilePAgeScreenState();
}

class _ProfilePAgeScreenState extends ConsumerState<ProfilePAgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Profile Page"),),);
  }
}
