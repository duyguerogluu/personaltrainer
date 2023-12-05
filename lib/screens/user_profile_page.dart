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
import 'package:personaltrainer/loginPage/login_page.dart';
import 'package:personaltrainer/screens/user_setting_screen.dart';

class UserProfilePageScreen extends ConsumerWidget {
  const UserProfilePageScreen({Key? key}) : super(key: key);

  String getText(TextEditingController controller, String def) {
    if (controller.text.trim().isEmpty) {
      return def;
    }

    return controller.text;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage:
                  NetworkImage("https://i.stack.imgur.com/l60Hf.png"),
            ),
            SizedBox(height: 20.0),
            Text(
              'Kullanıcı Adı',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'kullanici_adi@mail.com', // Kullanıcı e-posta adresi
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            SizedBox(height: 30.0),
            ListTile(
              leading: Icon(Icons.settings), // Ayarlar simgesi
              title: Text('Ayarlar'), // Ayarlar
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserSettingScreen()),
                );
              }, // Sağa ok simgesi
            ),
            ListTile(
              leading: Icon(Icons.logout), // Çıkış simgesi
              title: Text('Çıkış Yap'), // Çıkış Yap
              onTap: () {
                debugPrint('ben çıkmıyorum bu uygulama çok iyiymiş');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
