import 'package:babiconsultancy/src/core/localization/localization_keys.dart';

enum TransferType{
  NORMAL(id: 2, key: LocalizationKeys.Transfer_Title),
  AIRPORT(id: 1, key: LocalizationKeys.Airport_Transfer_Title);

  const TransferType({
    required this.id,
    required this.key,
  });

  final String key;
  final int id;

  static TransferType get(int id) {
    return TransferType.values.firstWhere((element) => element.id == id);
  }
}
