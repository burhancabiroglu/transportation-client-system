import 'package:babiconsultancy/src/backend/model/booking/transfer_wish_dto.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/status/status_badge.dart';
import 'package:flutter/material.dart';

class TransferRequestTile extends CoreStatelessWidget {
  final TransferWishDto bookRequest;
  const TransferRequestTile({
    super.key,
    this.bookRequest = const TransferWishDto(
      id: "id", 
      transferType: 0, 
      fullname: "fullname", 
      email: "email", 
      createdAt: "createdAt",
      additionalNote: ""
      )
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 6.h
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transfer Tipi",
                    style: theme.textStyle.caption02.copyWith(color: theme.colorScheme.textSecondary),
                  ),
                  Text(
                    "Hava Limanı Transferi",
                    style: theme.textStyle.footnote01.copyWith(color: theme.colorScheme.textPrimary),
                  ),
                ],
              ),
              const Spacer(),
              StatusBadge(statusKey: 0)
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              bookRequest.createdAt,
              style: theme.textStyle.caption02.copyWith(color: theme.colorScheme.textPrimary),
            ),
          ),
          SizedBox(height: 5.h),
          const Divider(height: 1)
        ],
      ),
    );
  }
}