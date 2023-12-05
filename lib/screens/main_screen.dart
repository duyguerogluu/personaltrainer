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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Center(
              child: SizedBox(
                height: 180,
                child: InkWell(
                  onTap: () {
                    //Navigator.push(

                    // context,
                    // MaterialPageRoute(
                    //   builder: (context) => SerialMenuScreen(
                    //     index: categories[index].id!.toInt(),
                    //   ),
                    // ),
                    // );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 5,
                            child: Image.network(
                              'https://picsum.photos/512',
                              height: 128,
                              fit: BoxFit.cover,
                              width: deviceWidth * 0.4,
                            ),
                          ),
                          Flexible(
                            child: SizedBox(height: 10),
                          ),
                          Flexible(
                            child: Text(
                              "categoryname",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
