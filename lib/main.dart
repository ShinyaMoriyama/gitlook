import 'package:flutter/material.dart';
import './repo_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Search',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'GitHub Search'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: false,
            centerTitle: true,
            title: Text(title),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search or jump to...',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const RepoCard(
                title: "frideosapps/frideos_flutter",
                desc:
                    "An all-in-one Fllutter package for state management, reactive objects, animations, effects, timed widgets etc.",
                tabs: ["Flutter", "State Management"],
                numStars: 123,
                numWatchs: 13,
              ),
              const RepoCard(
                title: "google/material-design-icons",
                desc: "Material Design icons by Google",
                tabs: ["icons", "material-design", "android", "ios", "web"],
                numStars: 464399,
                numWatchs: 268,
              ),
              const RepoCard(
                title: "bytedance/IconPark",
                desc:
                    "🍎Transform an SVG icon into multiple themes, and generate React icons，Vue icons，svg icons",
                tabs: [
                  "icons",
                  "svg",
                  "fill",
                  "vue-component",
                  "multiple-themes"
                ],
                numStars: 6320,
                numWatchs: 102,
              ),
              const RepoCard(
                title: "pallets/flask",
                desc:
                    "The Python micro framework for building web applications.",
                tabs: [
                  "python",
                  "flask",
                  "web-framework",
                ],
                numStars: 60220,
                numWatchs: 1250,
              ),
              const RepoCard(
                title: "miguelgrinberg/flasky",
                desc:
                    "Companion code to my O'Reilly book \"Flask Web Development\", second edition.",
                tabs: [
                  "python",
                  "flask",
                ],
                numStars: 7800,
                numWatchs: 150,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
