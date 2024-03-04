import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/logger/loggy_types.dart';
import 'package:danamonTest/common/ui/widget/custom_image.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/feature/home/photos/cubit/photos_cubit.dart';
import 'package:danamonTest/feature/home/photos/model/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UserHomeTab extends StatefulWidget {
  const UserHomeTab({super.key});

  @override
  State<UserHomeTab> createState() => _UserHomeTabState();
}

class _UserHomeTabState extends State<UserHomeTab> with UiLoggy {
  final List<Photo> _photos = [];
  final ScrollController _scrollController = ScrollController();

  Future<void> _refreshData() async {
    _photos.clear();
    context.read<PhotosCubit>()
      ..isFetching = true
      ..fetchData(isRefresh: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos'),
        actions: [
          IconButton(onPressed: _refreshData, icon: Icon(Icons.refresh))
        ],
      ),
      body: BlocConsumer<PhotosCubit, PhotosState>(
        listener: (context, state) {
          if (state is PhotosSuccess && state.dataList.isNotEmpty) {
            _photos.addAll(state.dataList);
            context.read<PhotosCubit>().isFetching = false;
          } else if (state is PhotosSuccess && state.dataList.isEmpty) {
            context.showSnackBarMessage('Tidak ada data lagi',
                type: SnackbarType.warning);
          } else if (state is PhotosError) {
            context.showSnackBarMessage(
              state.message,
              type: SnackbarType.error,
            );
            context.read<PhotosCubit>().isFetching = false;
          }
          return;
        },
        builder: (context, state) {
          if (state is PhotosLoading && _photos.isEmpty) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _loadingAnimation();
              },
            );
          }
          return SafeArea(
            child: RefreshIndicator(
              onRefresh: _refreshData,
              child: ListView.separated(
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.offset ==
                            _scrollController.position.maxScrollExtent &&
                        !context.read<PhotosCubit>().isFetching) {
                      context.read<PhotosCubit>()
                        ..isFetching = true
                        ..fetchData();
                    }
                  }),
                itemBuilder: (context, index) {
                  return _photosItem(index, context, state);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: _photos.length,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _photosItem(int index, BuildContext context, PhotosState state) {
    return PagePadding(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImage.rounded(
                size: 100,
                url: _photos[index].thumbnailUrl,
              ),
              const CustomSpacer.horizontal(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'ID: ',
                        style: context.textTheme.titleSmall,
                        children: <TextSpan>[
                          TextSpan(
                            text: _photos[index].id.toString(),
                            style: context.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Title: ',
                        style: context.textTheme.titleSmall,
                        children: <TextSpan>[
                          TextSpan(
                            text: _photos[index].title ?? '',
                            style: context.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: RichText(
                        text: TextSpan(
                          text: 'Link: ',
                          style: context.textTheme.titleSmall,
                          children: <TextSpan>[
                            TextSpan(
                              text: _photos[index].url ?? '',
                              style: context.textTheme.bodySmall?.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () => _launchURL(_photos[index].url ?? ''),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (_photos.length == index + 1 || state == PhotosLoading)
            const Column(
              children: [
                CustomSpacer.vertical(
                  scale: 2,
                ),
                CircularProgressIndicator(),
                CustomSpacer.vertical(),
                Text('Loading ...'),
                CustomSpacer.vertical(
                  scale: 2,
                ),
              ],
            )
        ],
      ),
    );
  }

  Shimmer _loadingAnimation() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: PagePadding(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomImage.rounded(
                  size: 100,
                  url: 'https://via.placeholder.com/150/92c952',
                ),
                const CustomSpacer.horizontal(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomSpacer.vertical(
                        scale: .5,
                      ),
                      Container(
                        height: 14,
                        color: Colors.white,
                      ),
                      const CustomSpacer.vertical(),
                      Container(
                        height: 14,
                        color: Colors.white,
                      ),
                      const CustomSpacer.vertical(),
                      Container(
                        height: 14,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
