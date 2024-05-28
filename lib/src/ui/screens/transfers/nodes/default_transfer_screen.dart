import 'package:babiconsultancy/src/backend/model/transfer/transfer_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/common/transfer_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/common/transfer_screen.dart';

class DefaultTransferScreen extends TransferScreen<DefaultTransferCubit> {
  static const route = "/main/transfers";

  const DefaultTransferScreen({super.key});
}

class DefaultTransferCubit extends TransferCubit {
  
  @override
  final transferStatus = TransferStatus.PLANNED;
  @override
  final transferType = TransferType.NORMAL;

  DefaultTransferCubit({
    required super.repo,
    required super.session
  });
}