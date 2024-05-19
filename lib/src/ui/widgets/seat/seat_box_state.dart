// ignore_for_file: constant_identifier_names

import 'package:babiconsultancy/config/assets.dart';

enum SeatBoxState{
  SELECTED(id: 3, isSelected: true, resource: Assets.seat_selected),
  OCCUPIED(id: 1, isSelected: null, resource: Assets.seat_disabled),
  AVAILABLE(id: 2, isSelected: false, resource: Assets.seat);

  const SeatBoxState({
    required this.id,
    required this.isSelected,
    required this.resource,
  });

  final bool? isSelected;
  final String resource;
  final int id;

  static SeatBoxState get(int id) {
    return SeatBoxState.values.firstWhere((element) => element.id == id);
  }
}
