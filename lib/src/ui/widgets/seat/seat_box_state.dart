// ignore_for_file: constant_identifier_names

import 'package:babiconsultancy/src/core/config/assets.dart';

enum SeatBoxState{
  SELECTED(isSelected: true, resource: Assets.seat_selected),
  INELIGIBLE(isSelected: null, resource: Assets.seat_disabled),
  UNSELECTED(isSelected: false, resource: Assets.seat);

  const SeatBoxState({
    required this.isSelected,
    required this.resource,
  });

  final bool? isSelected;
  final String resource;
}