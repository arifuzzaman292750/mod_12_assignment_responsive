import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mod_12_assignment_responsive/constants.dart';
import 'package:mod_12_assignment_responsive/presentation/responsive/responsive_layout.dart';
import 'package:mod_12_assignment_responsive/utils/my_button.dart';
import 'package:mod_12_assignment_responsive/utils/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _mobileLayoutBuilder(),
      tablet: _tabletLayoutBuilder(),
      desktop: _desktopLayoutBuilder(),
    );
  }

  Widget _mobileLayoutBuilder() {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      drawer: const NavBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBodySum(),
            const SizedBox(height: 60),
            const MyButton(),
          ],
        ),
      ),
    );
  }

  Widget _tabletLayoutBuilder() {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            _buildCustomAppbar(),
            const SizedBox(height: 100),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBodySum(),
                const SizedBox(
                  height: 60,
                ),
                const MyButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _desktopLayoutBuilder() {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            _buildCustomAppbar(),
            const SizedBox(height: 100),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDesktopBodySum(),
                    const SizedBox(
                      width: 60,
                    ),
                    const Expanded(
                      child: MyButton(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomAppbar() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'HUMMING \nBIRD.',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Text('Episodes'),
                SizedBox(width: 40),
                Text('About'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBodySum() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'FLUTTER WEB.\nTHE BASICS',
            textAlign: TextAlign.center,
            style: GoogleFonts.oswald(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'In this course we will go over the basics of using '
            '\nFlutter Web for development. Topics will include '
            '\nResponsive Layout, Deploying, Font Changes, Hover '
            '\nfunctionality, Modals and more.',
            style: TextStyle(height: 2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopBodySum() {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FLUTTER WEB.\nTHE BASICS',
            //textAlign: TextAlign.center,
            style: GoogleFonts.oswald(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'In this course we will go over the basics of using '
                '\nFlutter Web for development. Topics will include '
                '\nResponsive Layout, Deploying, Font Changes, Hover '
                '\nfunctionality, Modals and more.',
            style: TextStyle(height: 2, fontSize: 18),
            //textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
