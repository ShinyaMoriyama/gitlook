import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../common/constant.dart';
import '../localization/loc_app.dart';

class RepoCard extends StatelessWidget {
  final String title;
  final String desc;
  final List<String> topics;
  final int numStars;
  final int numWatching;
  final int numForks;
  final String language;
  final String avatarUrl;
  final int numIssues;

  const RepoCard({
    required this.title,
    required this.desc,
    required this.topics,
    required this.numStars,
    required this.numWatching,
    required this.numForks,
    required this.language,
    required this.avatarUrl,
    required this.numIssues,
    super.key,
  });

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
            header: _HeaderWidget(
              avatarUrl: avatarUrl,
              title: title,
            ),
            collapsed: Text(
              desc,
              softWrap: true,
              maxLines: 2,
            ),
            expanded: _ExpandedWidget(
              desc: desc,
              topics: topics,
              numStars: numStars,
              numWatching: numWatching,
              numForks: numForks,
              numIssues: numIssues,
              language: language,
            ),
          ),
        ),
      ),
    );
  }
}

class _Metrics extends StatelessWidget {
  final IconData iconData;
  final int value;
  final String label;
  const _Metrics({
    required this.iconData,
    required this.value,
    required this.label,
  });

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

class _HeaderWidget extends StatelessWidget {
  final String avatarUrl;
  final String title;
  const _HeaderWidget({
    required this.avatarUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _ExpandedWidget extends StatelessWidget {
  final String desc;
  final List<String> topics;
  final int numStars;
  final int numWatching;
  final int numForks;
  final int numIssues;
  final String language;

  const _ExpandedWidget({
    required this.desc,
    required this.topics,
    required this.numStars,
    required this.numWatching,
    required this.numForks,
    required this.numIssues,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 4,
        ),
        _Metrics(
          iconData: FontAwesomeIcons.star,
          value: numStars,
          label: LocApp.translate(LKeys.starsLabel),
        ),
        _Metrics(
          iconData: FontAwesomeIcons.eye,
          value: numWatching,
          label: LocApp.translate(LKeys.watchingLabel),
        ),
        _Metrics(
          iconData: FontAwesomeIcons.codeFork,
          value: numForks,
          label: LocApp.translate(LKeys.forksLabel),
        ),
        _Metrics(
          iconData: FontAwesomeIcons.circleDot,
          value: numIssues,
          label: LocApp.translate(LKeys.issuesLabel),
        ),
        Row(
          children: [
            Text("${LocApp.translate(LKeys.languageLabel)}:"),
            Text(language),
          ],
        ),
      ],
    );
  }
}
