import 'package:flutter/material.dart';
import 'package:mod_12_assignment_responsive/constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: ListView(
        children: [
          DrawerHeader(
           // padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(color: Colors.green[300]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SKILL UP NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'TAP HERE',
                    style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0, left: 20),
            child: Column(
              children: [
                ListTile(
                  minLeadingWidth: 40,
                  leading: Icon(Icons.local_movies),
                  title: Text(
                    'Episodes',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 25),
                ListTile(
                  minLeadingWidth: 40,
                  leading: Icon(Icons.feedback),
                  title: Text(
                    'About',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
