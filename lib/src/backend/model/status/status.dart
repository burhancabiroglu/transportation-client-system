import "package:freezed_annotation/freezed_annotation.dart";
part "../../../../generated/model/status/status.freezed.dart";

@freezed
class Status with _$Status {
  const factory Status({
    required int id,
    required String key,
    required int color,
  }) = _Status;

  static const PENDING = Status(
    id: 0,
    key: "status.pending",
    color: 0xFFFA6C24
  );

  static const DECLINED = Status(
    id: 1,
    key: "status.declined",
    color: 0xFFC94D5C
  );

  static const ACCEPTED = Status(
    id: 2,
    key: "status.accepted",
    color: 0xFF50EC81
  );
    
  static const DONE = Status(
    id: 3,
    key: "status.done",
    color: 0xFF666668
  );

  static Status getById(int id) {
    switch(id) {
      case 0:
        return PENDING;
      case 1:
        return DECLINED;
      case 2:
        return ACCEPTED;
      case 3:
        return DONE;
    }
    return DONE;
  }
}

