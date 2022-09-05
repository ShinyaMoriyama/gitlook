import 'dart:async';
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
      debugPrint("onDispose");
      cancelToken.cancel();
    });

    final repository = ref.watch(repositoryProvider);
    final resultDataList = await repository.search(keyword, cancelToken);

    return resultDataList;
  },
  cacheTime: const Duration(minutes: 5),
);

class HomeListview extends StatefulHookConsumerWidget {
  final TextEditingController textEditingController;

  const HomeListview({
    required this.textEditingController,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeListviewState();
}

class _HomeListviewState extends ConsumerState<HomeListview> {
  Timer? _timer;
  String _debouncedKeyword = "";

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  /// reduce the number of api calls by debouncing keywords
  /// https://stackoverflow.com/questions/51791501/how-to-debounce-textfield-onchange-in-dart
  void _debounceKeyword(String keyword) {
    if (_debouncedKeyword == keyword) return;
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: debounceDurationMS), () {
      setState(() {
        _debouncedKeyword = keyword;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final keyword = useValueListenable(widget.textEditingController).text;
    _debounceKeyword(keyword);

    return ref.watch(serchProvider(_debouncedKeyword)).when(data: (data) {
      debugPrint("list view: ${data.length}");
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
            numIssues: data[index].numIssues,
          ),
        ),
      );
    }, error: ((error, stackTrace) {
      debugPrint(
          "error on serchProvider=> error:[$error] stackTrace:[$stackTrace]");
      return SliverToBoxAdapter(
        child: Container(),
      );
    }), loading: () {
      debugPrint("loading on serchProvider");
      return const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()));
    });
  }
}
