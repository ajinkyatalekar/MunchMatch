import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MatchesRecord extends FirestoreRecord {
  MatchesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "giver" field.
  String? _giver;
  String get giver => _giver ?? '';
  bool hasGiver() => _giver != null;

  // "taker" field.
  String? _taker;
  String get taker => _taker ?? '';
  bool hasTaker() => _taker != null;

  // "loc" field.
  String? _loc;
  String get loc => _loc ?? '';
  bool hasLoc() => _loc != null;

  // "time_hr" field.
  String? _timeHr;
  String get timeHr => _timeHr ?? '';
  bool hasTimeHr() => _timeHr != null;

  // "time_min" field.
  String? _timeMin;
  String get timeMin => _timeMin ?? '';
  bool hasTimeMin() => _timeMin != null;

  void _initializeFields() {
    _giver = snapshotData['giver'] as String?;
    _taker = snapshotData['taker'] as String?;
    _loc = snapshotData['loc'] as String?;
    _timeHr = snapshotData['time_hr'] as String?;
    _timeMin = snapshotData['time_min'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('matches');

  static Stream<MatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatchesRecord.fromSnapshot(s));

  static Future<MatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatchesRecord.fromSnapshot(s));

  static MatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatchesRecordData({
  String? giver,
  String? taker,
  String? loc,
  String? timeHr,
  String? timeMin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'giver': giver,
      'taker': taker,
      'loc': loc,
      'time_hr': timeHr,
      'time_min': timeMin,
    }.withoutNulls,
  );

  return firestoreData;
}

class MatchesRecordDocumentEquality implements Equality<MatchesRecord> {
  const MatchesRecordDocumentEquality();

  @override
  bool equals(MatchesRecord? e1, MatchesRecord? e2) {
    return e1?.giver == e2?.giver &&
        e1?.taker == e2?.taker &&
        e1?.loc == e2?.loc &&
        e1?.timeHr == e2?.timeHr &&
        e1?.timeMin == e2?.timeMin;
  }

  @override
  int hash(MatchesRecord? e) => const ListEquality()
      .hash([e?.giver, e?.taker, e?.loc, e?.timeHr, e?.timeMin]);

  @override
  bool isValidKey(Object? o) => o is MatchesRecord;
}
