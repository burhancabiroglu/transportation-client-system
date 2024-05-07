import 'package:babiconsultancy/src/backend/model/booking/booking_request.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/status/status_badge.dart';
import 'package:flutter/material.dart';

class TransferRequestTile extends CoreStatelessWidget {
  final BookingRequest bookRequest;
  const TransferRequestTile({
    super.key,
    this.bookRequest = const BookingRequest(id: "id", status: 0, date: "20.12.2020", type: "type")
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
              StatusBadge(statusKey: bookRequest.status)
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              bookRequest.date,
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