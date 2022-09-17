import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:taskies/features/home/widgets/home.dart';

import 'package:taskies/theme/colors.dart' as COLORS;

class _Screen {
  final String asset;
  final String title;
  const _Screen({required this.asset, required this.title});
}

class CreateNewEvent extends StatefulWidget {
  const CreateNewEvent({Key? key}) : super(key: key);

  @override
  State<CreateNewEvent> createState() => _CreateNewEventState();
}

class _CreateNewEventState extends State<CreateNewEvent> {
  final List<_Screen> _screens = [
    const _Screen(
        asset: "assets/images/calendar.png", title: "Create new event"),
    const _Screen(
        asset: "assets/images/notification.png", title: "Local notification"),
    const _Screen(
        asset: "assets/images/translation.png", title: "Multi-language"),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.backgroundColor,
      body: Container(
          width: double.infinity,
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  _screens.elementAt(_index).asset,
                  width: 140.0,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Center(
                  child: Text(
                    _screens.elementAt(_index).title,
                    style: TextStyle(color: COLORS.textColor, fontSize: 16),
                  ),
                )
              ])),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: COLORS.primaryColor1,
        onPressed: () => {
          if (_index + 1 != _screens.length)
            {
              setState(() {
                // changing in widget
                _index = _index + 1;
                print('$_index');
              })
            }
          else
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()))
            }
        },
        isExtended: true,
        label: const Text("Next"),
      ),
    );
  }
}
