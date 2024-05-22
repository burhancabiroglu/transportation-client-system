import 'package:babiconsultancy/src/core/localization/localization_keys.dart';

enum TransferStatus{
  DONE(id: 2, key: LocalizationKeys.Status_Done),
  PLANNED(id: 1, key: LocalizationKeys.Status_Planned);

  const TransferStatus({
    required this.id,
    required this.key,
  });

  final String key;
  final int id;

  static TransferStatus get(int id) {
    return TransferStatus.values.firstWhere((element) => element.id == id);
  }
}

