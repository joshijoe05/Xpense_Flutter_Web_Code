import 'package:flutter/material.dart';
import 'package:xpense_web/pages/containers/container2.dart';

import '../utils/constants.dart';
import '../widgets/navbar.dart';
import 'containers/container1.dart';
import 'containers/container3.dart';
import 'containers/container4.dart';
import 'containers/container5.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.sizeOf(context).width;
    h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Container3(),
              Container4(),
              Container5()
            ],
          ),
        ),
      ),
    );
  }
}
