import 'package:get/get.dart';

import '../modules/form/bindings/form_binding.dart';
import '../modules/form/views/form_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FORM;

  static final routes = [
    GetPage(
      name: _Paths.FORM,
      page: () => const FormView(),
      binding: FormBinding(),
    ),
  ];
}
