import 'package:go_router/go_router.dart';
import 'package:learnfy/features/login/presentation/login_view.dart';

abstract class AppRouter {
  static const kLoginView = "/login_view";

  static final router = GoRouter(
    routes: [
      GoRoute(path: kLoginView, builder: (context, state) => LoginView()),
    ],
  );
}
