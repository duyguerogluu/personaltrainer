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
