import 'package:babiconsultancy/src/backend/handler/session/session_manager.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_state.dart';
import 'package:babiconsultancy/src/backend/model/user/user.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_wish_repo.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransferRequestCubit extends Cubit {
  final SessionManager session;
  final TransferWishRepo repo;
  TransferRequestCubit({
    required this.repo,
    required this.session
  }): super(0);

  List<ImmutableTextFieldData> get data {
    final auth = session.state as Authorized;
    final localization = LocalizationManager();
      final date = DateFormat.yMMMMd(localization.currentCode).format(DateTime.now());
      return [
        ImmutableTextFieldData(
          label: localization.of(LocalizationKeys.Form_FullName), 
          text: auth.user.fullname
        ),
        ImmutableTextFieldData(
          label: localization.of(LocalizationKeys.Form_Email),
          text: auth.user.email
        ),
        ImmutableTextFieldData(
          label: localization.of(LocalizationKeys.Form_CreatedAt), 
          text: date,
        )
    ];
  }
}