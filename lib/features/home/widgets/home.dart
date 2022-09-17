import 'package:flutter/material.dart';
import 'package:taskies/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        toolbarHeight: 84,
        elevation: 0,
        flexibleSpace: Flexible(
            child: Container(
          padding:
              const EdgeInsets.only(top: 48, left: 16, right: 16, bottom: 16),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Today Schedule",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "Fri 11",
                    style: TextStyle(color: accentColor),
                  )
                ],
              ),
              Image.asset(
                "assets/images/user-avatar-default.png",
                width: 48,
                height: 48,
              )
            ],
          ),
        )),
      ),
      body: const Text("Body"),
    );
  }
}
