import 'package:flutter/material.dart';
import 'package:trining/onmatch/step1.dart';
import 'package:trining/onmatch/step10.dart';
import 'package:trining/onmatch/step11.dart';
import 'package:trining/onmatch/step12.dart';
import 'package:trining/onmatch/step13.dart';
import 'package:trining/onmatch/step2.dart';
import 'package:trining/onmatch/step3.dart';
import 'package:trining/onmatch/step4.dart';
import 'package:trining/onmatch/step5.dart';
import 'package:trining/onmatch/step6.dart';
import 'package:trining/onmatch/step7.dart';
import 'package:trining/onmatch/step8.dart';
import 'package:trining/onmatch/step9.dart';


class Pageview extends StatefulWidget {
  const Pageview({Key? key}) : super(key: key);

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  PageController controller = PageController();
//  List<Widget> list = [];
  double curr = 1;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF003C30),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Image.asset("assets/images/app_logo.png", scale: 4),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  radius: 50,
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {},
                  child: const Icon(Icons.arrow_back_ios_new_rounded,
                      size: 20, color: Color(0xFF424141)),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text("Step 1 of 13",
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
                const SizedBox(
                  width: 150,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                        "Save & exit")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: SizedBox(
                  width: 330,
                  child: LinearProgressIndicator(
                    value: curr / 13,
                    backgroundColor: const Color(0xFFD9EEE5),
                    minHeight: 15.0,
                    valueColor: const AlwaysStoppedAnimation(Color(0xFF003C30)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: PageView(
                controller: controller,
                onPageChanged: (num) {
                  setState(() {
                    curr = num + 1;
                    currentIndex = num + 1;
                  });
                },
                children: [
                  Step1(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step2(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step3(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step4(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step5(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step6(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step7(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step8(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step9(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step10(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step11(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  step12(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                  Step13(
                    onTab: () {
                      controller.animateToPage(currentIndex,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
