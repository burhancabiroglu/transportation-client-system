import 'package:babiconsultancy/src/backend/repo/transfer_repo.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_wish_repo.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit {
  final TransferWishRepo transferWishRepo;
  final TransferRepo transferRepo;
  HomeCubit({
    required this.transferWishRepo, 
    required this.transferRepo
  }): super(null);

  void navigateToAboutUs() {
    CoreRouter.main.pushNamed(AboutUsScreen.route);
  }
}