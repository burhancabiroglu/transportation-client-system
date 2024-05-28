import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_box_state.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_dto.dart';

sealed class TransferState {
  final TransferDto? transfer;

  const TransferState({this.transfer});
  static const none = TransferStateNone();
  static const empty = TransferStateEmpty();
  
  const factory TransferState.seatSelection({
    Map<int,SeatDto> data, 
    int? previousSelected,
    bool alreadyFound,
    TransferDto? transfer,
  }) = TransferSeatSelection;

}

class TransferStateNone extends TransferState {
  const TransferStateNone();
}

class TransferSeatSelection  extends TransferState {
  final int? previousSelected;
  final bool alreadyFound;
  final Map<int,SeatDto> data;
  const TransferSeatSelection({
    this.data = const {}, 
    this.previousSelected,
    this.alreadyFound = true,
    super.transfer,
  });

  bool get buttonState {
    for (var element in data.entries) { 
      if(element.value.seatStatus == SeatBoxState.SELECTED.id) return true;
    }
    return false;
  }
}

class TransferStateEmpty extends TransferState {
  const TransferStateEmpty();
}

