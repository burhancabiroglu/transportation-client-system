
import 'package:babiconsultancy/src/backend/model/transfer/transfer_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/common/transfer_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/common/transfer_screen.dart';

class AirportTransferScreen extends TransferScreen<AirportTransferCubit> {
  static const route = "/main/airport_transfers";
  const AirportTransferScreen({super.key});
}

class AirportTransferCubit extends TransferCubit {  
  @override
  final transferStatus = TransferStatus.PLANNED;
  @override
  final transferType = TransferType.AIRPORT;

  AirportTransferCubit({
    required super.repo,
    required super.session
  });
}