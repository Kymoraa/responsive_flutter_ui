import 'package:flutter/material.dart';
import 'package:responsive_flutter_ui/responsive_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive UI Demo'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ResponsiveWidget(
            mobile: Column(
              children: [
                buildBannerSlider(),
                const SizedBox(height: 24),
                buildIntroText(),
              ],
            ),
            tab: Row(
              children: [
                buildBannerSlider(),
                const SizedBox(width: 24),
                Expanded(
                  child: buildIntroText(),
                ),
              ],
            ),
            desktop: Row(
              children: [
                buildBannerSlider(),
                const SizedBox(width: 24),
                Expanded(
                  child: buildIntroText(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text buildIntroText() {
    return const Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      style: TextStyle(
        fontSize: 17,
      ),
    );
  }

  Container buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Colors.red, Colors.pink]),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
