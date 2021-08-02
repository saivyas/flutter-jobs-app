import 'package:jobs_app/middleware/app_middleware.dart';
import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/reducers/app_reducer.dart';
import 'package:redux/redux.dart';

Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    distinct: true,
    middleware: AppMiddleware().createMiddleware(),
  );
}
