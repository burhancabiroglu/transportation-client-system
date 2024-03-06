import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit {
  HomeCubit(): super(null);

  void navigateToAboutUs() {
    CoreRouter.main.pushNamed(AboutUsScreen.route);
  }
}