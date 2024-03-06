import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/ui/widgets/seat/seat_box_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeatBox extends CoreStatelessWidget {
  final int index;
  final SeatBoxState state;
  final Function(int,SeatBoxState)? onStateChange;
  const SeatBox({
    super.key,
    this.index = 0, 
    this.state = SeatBoxState.INELIGIBLE,
    this.onStateChange,
  });

  SeatBoxState onTap() {
    final newState = switch(state) {
      SeatBoxState.SELECTED => SeatBoxState.UNSELECTED,
      SeatBoxState.INELIGIBLE => SeatBoxState.INELIGIBLE,
      SeatBoxState.UNSELECTED => SeatBoxState.SELECTED,
    };
    onStateChange?.call(index,newState);
    return newState;
  }

  @override
  Widget build(BuildContext context) {
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