import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_state.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/result/transfer_not_found.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/shadow_overlay.dart';
import 'package:babiconsultancy/src/ui/widgets/seat/seat_box.dart';
import 'package:babiconsultancy/src/ui/widgets/tool/toolset.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferScreen extends CoreStatelessWidget {
  static const route = "/main/transfers";

  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TransferCubit>(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.darken,
      appBar: CoreAppBar(title: Text(localization.of(localization.of(cubit.transferType.title)))),
      body: RoundedBody(
        child: BlocBuilder<TransferCubit,TransferState>(
          bloc: cubit,
          builder: (context,state) {
            if(state is TransferStateEmpty){
               return TransferNotFoundView(type: cubit.transferType);
            }
            if(state is TransferSeatSelection) {
              return Padding(
                padding: EdgeInsets.only(
                  top: WindowDefaults.verticalPadding * 1.6,
                  bottom: WindowDefaults.verticalPadding,
                  left: WindowDefaults.wall,
                  right: WindowDefaults.wall
                ),
                child: Column(
                  children: [
                    Text(
                      LocalizationKeys.lorem,
                      style: theme.textStyle.footnote02,
                    ),
                    const SeatToolsetWidget(),
                    SizedBox(height: 24.h),
                    Expanded(
                      child: ShadowOverlay(
                        shadowWidth: 500.w,
                        shadowHeight: 50.h,
                        shadowColor: theme.colorScheme.container,
                        child: GridView.builder(
                          padding: EdgeInsets.only(bottom: WindowDefaults.verticalPadding * 2),
                          itemCount: 6,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1,
                            crossAxisSpacing: 20.w,
                            mainAxisSpacing: 20.h
                          ),
                          itemBuilder: ((context, index) {
                            return SeatBox(
                              key: ValueKey(index),
                              index: index,
                              dto: state.data[index]!,
                              onStateChange: cubit.onStateChanged,
                            );
                          })
                        ),
                      ),
                    ),
                    PrimaryButton(
                      isEnabled: state.buttonState,
                      text: localization.of(LocalizationKeys.Transfer_Request_Choose_Seat),
                      onClick: cubit.navigateToApprove
                    )
                  ],
                ),
              );
            }
            return const SizedBox(); 
          }
        )
      ),
    );
  }
}