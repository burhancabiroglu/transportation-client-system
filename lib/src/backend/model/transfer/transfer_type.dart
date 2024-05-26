import 'package:babiconsultancy/src/core/localization/localization_keys.dart';

enum TransferType{
  NORMAL(
    id: "2", 
    title: LocalizationKeys.Transfer_Title,
    key: LocalizationKeys.TransferType_Standart,
  ),
  AIRPORT(
    id: "1", 
    title: LocalizationKeys.Airport_Transfer_Title,
    key: LocalizationKeys.TransferType_Airport
  );

  const TransferType({
    required this.id,
    required this.key,
    required this.title
  });

  final String title;
  final String key;
  final String id;

  static TransferType get(String id) {
    return TransferType.values.firstWhere((element) => element.id == id);
  }
}
