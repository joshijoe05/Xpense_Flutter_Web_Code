import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_web/utils/colors.dart';

import '../../utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  Widget MobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20, horizontal: w! / 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 530,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(illustration1),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w! / 10,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Helps you to organixe your income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.primary),
                ),
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down_outlined),
                label: const Text('Try free demo')),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '- Web, iOs and Android',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: w! / 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your \nExpenses to \nSave Money',
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Helps you to organixe your income and expenses',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down_outlined),
                            label: const Text('Try free demo')),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '- Web, iOs and Android',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(illustration1),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
