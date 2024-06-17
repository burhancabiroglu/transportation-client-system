import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/shimmer/shimmer_placeholder.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/no_transfer_box.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box_state.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TransfersBoxLayout extends CoreStatelessWidget {
  const TransfersBoxLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    final cubit = BlocProvider.of<TransferBoxCubit>(context);
    cubit.fetch();
    return BlocBuilder<TransferBoxCubit, TransferBoxState>(
      bloc: cubit,
      builder: (context, state) {
        if(state is TransferBoxStateEmpty) {
          return const NoTransferBox();
        }
        if(state is TransferBoxStateSuccess) {
           return Column(
            children: [
              SizedBox(
                height: 220.h,
                width: double.infinity,
                child: PageView.builder(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.reservations.length,
                  itemBuilder: (context, index) => 
                    TransfersBoxWidget(reservation: state.reservations[index]),
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 8.h),
                width: double.infinity,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: state.reservations.length,
                  textDirection: TextDirection.ltr,
                  effect: JumpingDotEffect(
                    dotHeight: 12.h,
                    dotWidth: 20.w,
                    dotColor: theme.colorScheme.primary.withAlpha(100),
                    activeDotColor: theme.colorScheme.primary,
                    spacing: 8.w
                  ),
                  onDotClicked: (val) {},
                ),
              ),
            ],
          );
        }
        return const ShimmerPlaceHolder(
          enabled: true,
          child: NoTransferBox(),
        );
      }
    );
  }
}

 
          