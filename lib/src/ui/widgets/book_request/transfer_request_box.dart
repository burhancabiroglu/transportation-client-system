import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/book_request/transfer_request_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/book_request/transfer_request_state.dart';
import 'package:babiconsultancy/src/ui/widgets/book_request/transfer_request_tile.dart';
import 'package:babiconsultancy/src/ui/widgets/shimmer/shimmer_placeholder.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/no_transfer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferRequestBox extends CoreStatelessWidget {
  const TransferRequestBox({super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16);
    final cubit = BlocProvider.of<TransferRequestBoxCubit>(context);
    cubit.fetch();
    return BlocBuilder<TransferRequestBoxCubit,TransferRequestState>(
      bloc: cubit,
      builder: (context, state) {
        return ShimmerPlaceHolder(
          enabled: state is TransferRequestsNone,
          child: state is TransferRequestsSuccess ? 
            ClipRRect(
              borderRadius: borderRadius,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: theme.colorScheme.disabled.withOpacity(0.6),
                ),
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => 
                    TransferRequestTile(bookRequest: state.requests[index])       
                ),
              ),
            )
            : const NoTransferBox()
        );
      }
    );
  }
}