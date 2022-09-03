import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dio/dio.dart';
import './repo_card.dart';
import './github_repository.dart';
import './constant.dart';

final serchProvider =
    FutureProvider.autoDispose.family<List<ResultData>, String>(
  (ref, keyword) async {
    if (keyword.length < lenMinKeywordSearch) {
      return [];
    }

    final cancelToken = CancelToken();
    ref.onDispose(() {
      print("onDispose");
      cancelToken.cancel();
    });

    final repository = ref.watch(repositoryProvider);
    final resultDataList = await repository.search(keyword, cancelToken);

    return resultDataList;
  },
  cacheTime: const Duration(minutes: 5),
);

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
      title: const Text("GitHub Search"),
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
            hintText: 'Search or jump to...',
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
          ),
          onSubmitted: (String value) {
            print("onSubmitted: $value");
          },
        ),
      ),
    );
  }
}

class HomeListView extends HookConsumerWidget {
  final TextEditingController textEditingController;
  const HomeListView({
    required this.textEditingController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keyword = useValueListenable(textEditingController).text;

    return ref.watch(serchProvider(keyword)).when(data: (data) {
      print("list view: ${data.length}");
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: data.length,
          (context, index) => RepoCard(
            title: data[index].name,
            desc: data[index].description,
            topics: data[index].topics,
            numStars: data[index].numStars,
            numWatching: data[index].numWatching,
            numForks: data[index].numForks,
            language: data[index].language,
            avatarUrl: data[index].owner.avatarUrl,
          ),
        ),
      );
    }, error: ((error, stackTrace) {
      print("error on serchProvider=> error:[$error] stackTrace:[$stackTrace]");
      return SliverToBoxAdapter(
        child: Container(),
      );
    }), loading: () {
      print("loading on serchProvider");
      return const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()));
    });
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
          HomeListView(textEditingController: textEditingController),
        ],
      ),
    );
  }
}
