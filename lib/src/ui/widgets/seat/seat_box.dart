import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_box_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeatBox extends CoreStatelessWidget {
  final int index;
  final SeatDto dto;
  final Function(int,SeatDto)? onStateChange;
  const SeatBox({
    super.key,
    this.index = 0, 
    required this.dto,
    this.onStateChange,
  });
  SeatBoxState onTap() {
    final SeatBoxState state = SeatBoxState.get(dto.status);
    final newState = switch(state) {
      SeatBoxState.SELECTED => SeatBoxState.AVAILABLE,
      SeatBoxState.OCCUPIED => SeatBoxState.OCCUPIED,
      SeatBoxState.AVAILABLE => SeatBoxState.SELECTED,
    };
    onStateChange?.call(index,dto.copyWith(status: newState.id));
    return newState;
  }

  @override
  Widget build(BuildContext context) {
    final SeatBoxState state = SeatBoxState.get(dto.status);
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          SvgPicture.asset(state.resource),
          if(state == SeatBoxState.SELECTED)...[
            Center(
              child: Icon(Icons.check, color: theme.colorScheme.forest),
            )
          ]
        ],
      ),
    );
  }
}