import 'package:babiconsultancy/src/backend/model/booking/transfer_wish_dto.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/status/status_badge.dart';
import 'package:flutter/material.dart';

class TransferRequestTile extends CoreStatelessWidget {
  final TransferWishDto bookRequest;
  const TransferRequestTile({
    super.key,
    required this.bookRequest
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*Text(
                    localization.of(LocalizationKeys.TransferType_Label),
                    style: textStyle.caption02.copyWith(color: colorScheme.textSecondary),
                  ),*/
                  Text(
                    localization.of(TransferType.get(bookRequest.transferType).key),
                    style: textStyle.footnote01.copyWith(color: colorScheme.textPrimary),
                  ),
                ],
              ),
              const Spacer(),
              const StatusBadge(statusKey: 0)
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              bookRequest.createdAt,
              style: textStyle.caption02.copyWith(color: colorScheme.textPrimary),
            ),
          ),
          SizedBox(height: 5.h),
          const Divider(height: 1)
        ],
      ),
    );
  }
}