import 'package:babiconsultancy/src/config/assets.dart';

enum SeatBoxState{
  SELECTED(id: "3", isSelected: true, resource: Assets.seat_selected),
  OCCUPIED(id: "2", isSelected: null, resource: Assets.seat_disabled),
  AVAILABLE(id: "1", isSelected: false, resource: Assets.seat);

  const SeatBoxState({
    required this.id,
    required this.isSelected,
    required this.resource,
  });

  final bool? isSelected;
  final String resource;
  final String id;

  static SeatBoxState get(String id) {
    return SeatBoxState.values.firstWhere((element) => element.id == id);
  }
}
