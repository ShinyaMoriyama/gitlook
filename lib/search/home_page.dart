import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './home_listview.dart';
import '../settings/dark_mode.dart';
import '../localization/loc_app.dart';

class HomeAppBar extends ConsumerWidget {
  final TextEditingController textEdigintController;
  const HomeAppBar({
    required this.textEdigintController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      floating: true,
      pinned: false,
      snap: false,
      centerTitle: true,
      title: Text(LocApp.translate(LKeys.appTitle)),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => const DarkMode(),
            ));
          },
          icon: const FaIcon(
            FontAwesomeIcons.circleHalfStroke,
            size: 20,
          ),
        ),
      ],
      bottom: AppBar(
        toolbarHeight: 70,
        title: TextField(
          controller: textEdigintController,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: LocApp.translate(LKeys.searchFor),
            prefixIcon: const Icon(Icons.search),
          ),
          onSubmitted: (String value) {
            debugPrint("onSubmitted: $value");
          },
        ),
      ),
    );
  }
}

class HomePage extends HookConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(textEdigintController: textEditingController),
          HomeListview(textEditingController: textEditingController),
        ],
      ),
    );
  }
}
