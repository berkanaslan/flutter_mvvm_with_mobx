import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mvvm_with_mobx/features/post/view-model/post-view-model.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) {
          return Text(_viewModel.totalPostCount.toString());
        }),
        actions: [
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                _viewModel.clearPost();
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.get_app_outlined),
        onPressed: () {
          _viewModel.getAllPosts();
        },
      ),
      body: buildPostList(),
    );
  }

  Widget buildPostList() {
    return Center(
      child: Observer(builder: (_) {
        switch (_viewModel.viewState) {
          case ViewState.IDLE:
            return buildListViewPosts();
          case ViewState.BUSY:
            return CircularProgressIndicator();
        }
      }),
    );
  }

  Widget buildListViewPosts() {
    return Observer(builder: (_) {
      return ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: _viewModel.posts.length,
        itemBuilder: (context, index) => buildListTileCard(index),
      );
    });
  }

  ListTile buildListTileCard(int index) {
    return ListTile(
      leading: Text(_viewModel.posts[index].userId.toString()),
      title: Text(_viewModel.posts[index].title),
      subtitle: Text(_viewModel.posts[index].body),
      trailing: Text(_viewModel.posts[index].id.toString()),
    );
  }
}
