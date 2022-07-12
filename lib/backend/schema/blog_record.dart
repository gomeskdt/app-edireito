import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blog_record.g.dart';

abstract class BlogRecord implements Built<BlogRecord, BlogRecordBuilder> {
  static Serializer<BlogRecord> get serializer => _$blogRecordSerializer;

  @nullable
  String get imagem;

  @nullable
  String get titulo;

  @nullable
  String get resumo;

  @nullable
  String get texto;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BlogRecordBuilder builder) => builder
    ..imagem = ''
    ..titulo = ''
    ..resumo = ''
    ..texto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blog');

  static Stream<BlogRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BlogRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BlogRecord._();
  factory BlogRecord([void Function(BlogRecordBuilder) updates]) = _$BlogRecord;

  static BlogRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBlogRecordData({
  String imagem,
  String titulo,
  String resumo,
  String texto,
}) =>
    serializers.toFirestore(
        BlogRecord.serializer,
        BlogRecord((b) => b
          ..imagem = imagem
          ..titulo = titulo
          ..resumo = resumo
          ..texto = texto));
