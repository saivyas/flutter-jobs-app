import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/selectors/selectors.dart';
import 'package:redux/redux.dart';

class RootScreen extends StatelessWidget {
  RootScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (BuildContext context, _ViewModel viewModel) {
        return Container(
          child: viewModel.rootScreen,
        );
      },
    );
  }
}

class _ViewModel {
  final Widget rootScreen;

  _ViewModel({
    @required this.rootScreen,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      rootScreen: rootScreenSelector(store.state),
    );
  }
}
