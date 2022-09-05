import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './constant.dart';
import './localization/loc_app.dart';

class RepoCard extends StatelessWidget {
  final String title;
  final String desc;
  final List<String> topics;
  final int numStars;
  final int numWatching;
  final int numForks;
  final String language;
  final String avatarUrl;

  const RepoCard({
    required this.title,
    required this.desc,
    required this.topics,
    required this.numStars,
    required this.numWatching,
    required this.numForks,
    required this.language,
    required this.avatarUrl,
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
        child: ExpandableNotifier(
          child: ExpandablePanel(
            theme: const ExpandableThemeData(
              animationDuration: Duration(milliseconds: animationDurationMS),
              tapBodyToCollapse: true,
              tapBodyToExpand: true,
            ),
            header: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(avatarUrl),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    softWrap: true,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            collapsed: Text(
              desc,
              softWrap: true,
              maxLines: 2,
            ),
            expanded: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(desc),
                const SizedBox(
                  height: 4,
                ),
                Wrap(
                  spacing: 4,
                  runSpacing: 6,
                  children: topics
                      .map((e) => Chip(
                            label: Text(e),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 4,
                ),
                Metrics(
                  iconData: FontAwesomeIcons.star,
                  value: numStars,
                  label: LocApp.translate(LKeys.starsLabel),
                ),
                Metrics(
                  iconData: FontAwesomeIcons.eye,
                  value: numWatching,
                  label: LocApp.translate(LKeys.watchingLabel),
                ),
                Metrics(
                  iconData: FontAwesomeIcons.codeFork,
                  value: numForks,
                  label: LocApp.translate(LKeys.forksLabel),
                ),
                Row(
                  children: [
                    Text("${LocApp.translate(LKeys.languageLabel)}:"),
                    Text(language),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Metrics extends StatelessWidget {
  final IconData iconData;
  final int value;
  final String label;
  const Metrics({
    required this.iconData,
    required this.value,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(children: [
        SizedBox(
          width: 20,
          child: Center(
            child: FaIcon(iconData, size: 18),
          ),
        ),
        const SizedBox(width: 4),
        Text(value.toString()),
        const SizedBox(width: 4),
        Text(label),
      ]),
    );
  }
}
