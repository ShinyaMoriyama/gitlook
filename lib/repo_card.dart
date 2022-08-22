import 'package:flutter/material.dart';

class RepoCard extends StatelessWidget {
  final String title;
  final String desc;
  final List<String> tabs;
  final int numStars;
  final int numWatchs;

  const RepoCard({
    required this.title,
    required this.desc,
    required this.tabs,
    required this.numStars,
    required this.numWatchs,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(desc),
            const SizedBox(
              height: 5,
            ),
            Wrap(
              spacing: 4,
              runSpacing: 6,
              children: tabs
                  .map((e) => Chip(
                        label: Text(e),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
