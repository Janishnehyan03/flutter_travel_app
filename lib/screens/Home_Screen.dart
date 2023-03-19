import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';
import 'package:travel_app/widgets/Heading.dart';
import 'package:travel_app/widgets/LabelSection.dart';
import 'package:travel_app/widgets/Recommended.dart';
import 'package:travel_app/widgets/SearchBox.dart';
import 'package:travel_app/widgets/Top.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            children: [
              HeadingSection(),
              SizedBox(
                height: 20,
              ),
              SearchBox(),
              SizedBox(
                height: 20,
              ),
              LabelSection(
                text: 'Recommended',
                style: heading1,
              ),
              SizedBox(
                height: 20,
              ),
              Recommended(),
              SizedBox(
                height: 20,
              ),
              LabelSection(
                text: 'Top Destinations',
                style: heading1,
              ),
              Top()
            ],
          ),
        )),
        bottomNavigationBar: SizedBox(
          height: 94,
          child: BottomNavigationBar(
            selectedItemColor: accent,
            unselectedItemColor: icon,
            backgroundColor: white,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: '',
              ),
            ],
          ),
        ));
  }
}
