import 'package:flutter/material.dart';
import 'package:my_portfolio/components/about.dart';
import 'package:my_portfolio/components/education.dart';
import 'package:my_portfolio/components/footer.dart';
import 'package:my_portfolio/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  bool isMobile = false;
  final scrollKey = GlobalKey();
  final educationKey = GlobalKey();
  List<Widget> navItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(
                educationKey.currentContext!,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInBack,
              );
            },
            child: const Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(
                scrollKey.currentContext!,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
            child: const Text("Skills")),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Developer Portfolio"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20.0,
            runSpacing: 20.0,
            children: [
              const About(),
              Education(
                key: educationKey,
              ),
              Skills(
                key: scrollKey,
              ),
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}
