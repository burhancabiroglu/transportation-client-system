import 'package:babiconsultancy/src/ui/widgets/seat/seat_box_state.dart';

class TransferState {
  final int? previousSelected;
  final Map<int,SeatBoxState> data;
  const TransferState({this.data = const {}, this.previousSelected});
  factory TransferState.empty() => const TransferState();

  bool get buttonState {
    for (var element in data.entries) { 
      if(element.value == SeatBoxState.SELECTED) return true;
    }
    return false;
  }
}