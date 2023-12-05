import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
 *  This file is part of personaltrainer.
 *
 *  personaltrainer is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  personaltrainer is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *   along with personaltrainer.  If not, see <https://www.gnu.org/licenses/>.
 */

class ProfilePAgeScreen extends ConsumerStatefulWidget {
  const ProfilePAgeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfilePAgeScreenState();
}

class _ProfilePAgeScreenState extends ConsumerState<ProfilePAgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
