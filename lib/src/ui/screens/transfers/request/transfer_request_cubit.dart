import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_manager.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_state.dart';
import 'package:babiconsultancy/src/backend/model/booking/booking_request.dart';
import 'package:babiconsultancy/src/backend/model/user/user.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_wish_repo.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/main/main_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/multi_result_screen.dart';
import 'package:babiconsultancy/src/ui/screens/result/multi/result_step_args.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import 'transfer_request_state.dart';

class TransferRequestCubit extends Cubit<TransferRequestState> {
  static const String additionalNoteRef = "additionalNoteRef";

  final localization = LocalizationManager();
  final formKey = GlobalKey<FormBuilderState>();
  final SessionManager session;
  final TransferWishRepo repo;

  FormBuilderState? get form => formKey.currentState;
  String get additionalNote => form?.fields[additionalNoteRef]?.value ?? "";


  TransferRequestCubit({
    required this.repo,
    required this.session
  }): super(TransferRequestState.None);

  TransferRequestStateSuccess get successState => state as TransferRequestStateSuccess;

  void fetch(String typeId) {
    final auth = session.state as Authorized;
    final date = DateFormat.yMMMMd(localization.currentCode).format(DateTime.now());
    emit(TransferRequestState.success(
      date: date,
      userId: auth.user.uid,
      transferType: typeId,
      email: auth.user.email,
      fullname: auth.user.fullname
    ));
  }

  List<ImmutableTextFieldData> get data => [
    ImmutableTextFieldData(
      label: localization.of(LocalizationKeys.Form_FullName), 
      text: successState.fullname
    ),
    ImmutableTextFieldData(
      label: localization.of(LocalizationKeys.Form_Email),
      text: successState.email
    ),
    ImmutableTextFieldData(
      label: localization.of(LocalizationKeys.Form_ApplicationDate), 
      text: successState.date,
    )
  ];


  void routeToSuccess() {
    CoreRouter.main.popAndPushNamed(
      MultiResultScreen.route, 
      arguments: { MultiResultScreen.argsKey: [
        ResultStepArgs(
          title: LocalizationKeys.TransferRequest_Successful_Title,
          description: LocalizationKeys.TransferRequest_Successful_Description,
          lottieAsset: Assets.successAnim,
          routeCallBack: (){
            CoreRouter.reset();
            CoreRouter.main.popAndPushNamed(MainScreen.route);
          }
        )
      ]}
    );
  }

  void submit() {
    final req = BookingRequest(
      successState.userId,
      additionalNote, 
      successState.transferType
    );
    EasyLoading.show();
    repo.createTransferWish(req)
       .successListener((data) => routeToSuccess())
      .errorListener((_) => 
        emit(const TransferRequestState.error(message: LocalizationKeys.TransferRequest_Error_Description)))
      .completeListener((result) => EasyLoading.dismiss());
  }
}