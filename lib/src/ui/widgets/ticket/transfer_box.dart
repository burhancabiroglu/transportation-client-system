import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/widgets/shimmer/shimmer_placeholder.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/no_transfer_box.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransfersBox extends CoreStatelessWidget {
  const TransfersBox({super.key});

  @override
  Widget build(BuildContext context) {
    final color = theme.colorScheme.primary;
    final borderRadius = BorderRadius.circular(16);
    final cubit = BlocProvider.of<TransferBoxCubit>(context);
    cubit.fetch();
    return BlocBuilder<TransferBoxCubit, TransferBoxState>(
      bloc: cubit,
      builder: (context, state) {
        return ShimmerPlaceHolder(
          enabled: state is TransferBoxStateNone,
          child: state is TransferBoxStateSuccess ? ClipRRect(
            borderRadius: borderRadius,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: theme.colorScheme.disabled.withOpacity(0.6),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(color: color),
                    child: Text(
                      "Havalimanı Transferi",
                      style: theme.textStyle.callout02.copyWith(color: theme.colorScheme.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall, vertical: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.plane, color: theme.colorScheme.textSecondary, size: 16.h,),
                        SizedBox(width: 12.w),
                        Text(
                          "AFS123B",
                          style: theme.textStyle.footnote01.copyWith(color: theme.colorScheme.textPrimary),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1, indent: 20,endIndent: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kalkış zamanı",
                          style: theme.textStyle.caption02.copyWith(color: theme.colorScheme.textSecondary),
                        ),
                        Text(
                          "20:20",
                          style: theme.textStyle.footnote01.copyWith(color: theme.colorScheme.textPrimary),
                        ),
                      ],
                    ),
                  ),    
                  const Divider(height: 1, indent: 20,endIndent: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "İletişim",
                          style: theme.textStyle.caption02.copyWith(color: theme.colorScheme.textSecondary),
                        ),
                        Text(
                          "deneme@gmail.com",
                          style: theme.textStyle.footnote01.copyWith(color: theme.colorScheme.textPrimary),
                        ),
                      ],
                    ),
                  ),            
                ],
              ),
            ),
          ): const NoTransferBox(),
        );
      }
    );
  }
}