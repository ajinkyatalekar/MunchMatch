import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SwipeGiversRecord extends FirestoreRecord {
  SwipeGiversRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ubit" field.
  String? _ubit;
  String get ubit => _ubit ?? '';
  bool hasUbit() => _ubit != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "time_hr" field.
  String? _timeHr;
  String get timeHr => _timeHr ?? '';
  bool hasTimeHr() => _timeHr != null;

  // "time_min" field.
  String? _timeMin;
  String get timeMin => _timeMin ?? '';
  bool hasTimeMin() => _timeMin != null;

  void _initializeFields() {
    _ubit = snapshotData['ubit'] as String?;
    _location = snapshotData['location'] as String?;
    _timeHr = snapshotData['time_hr'] as String?;
    _timeMin = snapshotData['time_min'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('swipe_givers');

  static Stream<SwipeGiversRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SwipeGiversRecord.fromSnapshot(s));

  static Future<SwipeGiversRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SwipeGiversRecord.fromSnapshot(s));

  static SwipeGiversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SwipeGiversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SwipeGiversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SwipeGiversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SwipeGiversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SwipeGiversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSwipeGiversRecordData({
  String? ubit,
  String? location,
  String? timeHr,
  String? timeMin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ubit': ubit,
      'location': location,
      'time_hr': timeHr,
      'time_min': timeMin,
    }.withoutNulls,
  );

  return firestoreData;
}

class SwipeGiversRecordDocumentEquality implements Equality<SwipeGiversRecord> {
  const SwipeGiversRecordDocumentEquality();

  @override
  bool equals(SwipeGiversRecord? e1, SwipeGiversRecord? e2) {
    return e1?.ubit == e2?.ubit &&
        e1?.location == e2?.location &&
        e1?.timeHr == e2?.timeHr &&
        e1?.timeMin == e2?.timeMin;
  }

  @override
  int hash(SwipeGiversRecord? e) =>
      const ListEquality().hash([e?.ubit, e?.location, e?.timeHr, e?.timeMin]);

  @override
  bool isValidKey(Object? o) => o is SwipeGiversRecord;
}
