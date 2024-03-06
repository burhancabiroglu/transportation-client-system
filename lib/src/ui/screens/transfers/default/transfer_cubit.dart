import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_state.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/request/transfer_request_screen.dart';
import 'package:babiconsultancy/src/ui/widgets/seat/seat_box_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferCubit extends Cubit<TransferState> {
  
  TransferCubit(): super(TransferState.empty()) {
    init();
  }
  
  void init() {
    emit(TransferState(data: initialState));
  }

  void onStateChanged(
    int index, 
    SeatBoxState otherState
  ) {
    if(otherState == SeatBoxState.INELIGIBLE) return;
    final data = state.data;
    data[index] = otherState;
    if(state.previousSelected != null) {
       data[state.previousSelected!] = SeatBoxState.UNSELECTED;
    }
    emit(TransferState(data: data,previousSelected: index));
  }

  void navigateToApprove() {
    CoreRouter.bottomNavBar.pushNamed(TransferRequestScreen.route);
  }

  final initialState = {
      0: SeatBoxState.INELIGIBLE,
      1: SeatBoxState.INELIGIBLE,
      2: SeatBoxState.UNSELECTED,
      3: SeatBoxState.UNSELECTED,
      4: SeatBoxState.UNSELECTED,
      5: SeatBoxState.UNSELECTED,
      6: SeatBoxState.UNSELECTED,
  };
}