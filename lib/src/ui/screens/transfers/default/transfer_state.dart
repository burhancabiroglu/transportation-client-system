import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/ui/widgets/seat/seat_box_state.dart';

sealed class TransferState {
  const TransferState();
  static const none = TransferStateNone();
  static const empty = TransferStateEmpty();
  
  const factory TransferState.seatSelection({
    Map<int,SeatDto> data, 
    int? previousSelected}) = TransferSeatSelection;

}

class TransferStateNone extends TransferState {
  const TransferStateNone();
}

class TransferSeatSelection  extends TransferState {
  final int? previousSelected;
  final Map<int,SeatDto> data;
  const TransferSeatSelection({this.data = const {}, this.previousSelected});

  bool get buttonState {
    for (var element in data.entries) { 
      if(element.value.status == SeatBoxState.SELECTED.id) return true;
    }
    return false;
  }
}

class TransferStateEmpty extends TransferState {
  const TransferStateEmpty();
}

