import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_mvvm_with_mobx/features/post/model/post.dart';
import 'package:mobx/mobx.dart';

part 'post-view-model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  final String url = "https://jsonplaceholder.typicode.com/posts/";

  @observable
  List<Post> posts = [];

  @observable
  int totalPostCount = 0;

  @observable
  ViewState viewState = ViewState.IDLE;

  @action
  Future<void> getAllPosts() async {
    viewState = ViewState.BUSY;

    final response = await Dio().get(url);

    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      posts = responseData.map((e) => Post.fromJson(e)).toList();
      totalCount();
    }

    viewState = ViewState.IDLE;
  }

  @action
  void totalCount() {
    totalPostCount = posts.length;
  }

  @action
  void clearPost() {
    viewState = ViewState.BUSY;
    posts.clear();
    totalCount();
    viewState = ViewState.IDLE;
  }
}

enum ViewState { IDLE, BUSY }
