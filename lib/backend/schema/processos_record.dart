import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'processos_record.g.dart';

abstract class ProcessosRecord
    implements Built<ProcessosRecord, ProcessosRecordBuilder> {
  static Serializer<ProcessosRecord> get serializer =>
      _$processosRecordSerializer;

  @nullable
  String get numeroprocesso;

  @nullable
  String get problema;

  @nullable
  String get valorenvolvido;

  @nullable
  String get areadodireito;

  @nullable
  String get data;

  @nullable
  BuiltList<String> get andamento;

  @nullable
  String get assinatura;

  @nullable
  bool get termo1;

  @nullable
  DocumentReference get usuariopropietario;

  @nullable
  String get valorcobrado;

  @nullable
  bool get solicitarpagamento;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProcessosRecordBuilder builder) => builder
    ..numeroprocesso = ''
    ..problema = ''
    ..valorenvolvido = ''
    ..areadodireito = ''
    ..data = ''
    ..andamento = ListBuilder()
    ..assinatura = ''
    ..termo1 = false
    ..valorcobrado = ''
    ..solicitarpagamento = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('processos');

  static Stream<ProcessosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProcessosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProcessosRecord._();
  factory ProcessosRecord([void Function(ProcessosRecordBuilder) updates]) =
      _$ProcessosRecord;

  static ProcessosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProcessosRecordData({
  String numeroprocesso,
  String problema,
  String valorenvolvido,
  String areadodireito,
  String data,
  String assinatura,
  bool termo1,
  DocumentReference usuariopropietario,
  String valorcobrado,
  bool solicitarpagamento,
}) =>
    serializers.toFirestore(
        ProcessosRecord.serializer,
        ProcessosRecord((p) => p
          ..numeroprocesso = numeroprocesso
          ..problema = problema
          ..valorenvolvido = valorenvolvido
          ..areadodireito = areadodireito
          ..data = data
          ..andamento = null
          ..assinatura = assinatura
          ..termo1 = termo1
          ..usuariopropietario = usuariopropietario
          ..valorcobrado = valorcobrado
          ..solicitarpagamento = solicitarpagamento));
