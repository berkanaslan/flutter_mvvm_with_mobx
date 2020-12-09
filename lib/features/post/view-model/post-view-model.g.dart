// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post-view-model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostViewModel on _PostViewModelBase, Store {
  final _$postsAtom = Atom(name: '_PostViewModelBase.posts');

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$totalPostCountAtom = Atom(name: '_PostViewModelBase.totalPostCount');

  @override
  int get totalPostCount {
    _$totalPostCountAtom.reportRead();
    return super.totalPostCount;
  }

  @override
  set totalPostCount(int value) {
    _$totalPostCountAtom.reportWrite(value, super.totalPostCount, () {
      super.totalPostCount = value;
    });
  }

  final _$viewStateAtom = Atom(name: '_PostViewModelBase.viewState');

  @override
  ViewState get viewState {
    _$viewStateAtom.reportRead();
    return super.viewState;
  }

  @override
  set viewState(ViewState value) {
    _$viewStateAtom.reportWrite(value, super.viewState, () {
      super.viewState = value;
    });
  }

  final _$getAllPostsAsyncAction =
      AsyncAction('_PostViewModelBase.getAllPosts');

  @override
  Future<void> getAllPosts() {
    return _$getAllPostsAsyncAction.run(() => super.getAllPosts());
  }

  final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase');

  @override
  void totalCount() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.totalCount');
    try {
      return super.totalCount();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearPost() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.clearPost');
    try {
      return super.clearPost();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
totalPostCount: ${totalPostCount},
viewState: ${viewState}
    ''';
  }
}
