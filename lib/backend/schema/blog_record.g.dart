// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogRecord> _$blogRecordSerializer = new _$BlogRecordSerializer();

class _$BlogRecordSerializer implements StructuredSerializer<BlogRecord> {
  @override
  final Iterable<Type> types = const [BlogRecord, _$BlogRecord];
  @override
  final String wireName = 'BlogRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BlogRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.imagem;
    if (value != null) {
      result
        ..add('imagem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.resumo;
    if (value != null) {
      result
        ..add('resumo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.texto;
    if (value != null) {
      result
        ..add('texto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  BlogRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'imagem':
          result.imagem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resumo':
          result.resumo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'texto':
          result.texto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$BlogRecord extends BlogRecord {
  @override
  final String imagem;
  @override
  final String titulo;
  @override
  final String resumo;
  @override
  final String texto;
  @override
  final DocumentReference<Object> reference;

  factory _$BlogRecord([void Function(BlogRecordBuilder) updates]) =>
      (new BlogRecordBuilder()..update(updates)).build();

  _$BlogRecord._(
      {this.imagem, this.titulo, this.resumo, this.texto, this.reference})
      : super._();

  @override
  BlogRecord rebuild(void Function(BlogRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogRecordBuilder toBuilder() => new BlogRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogRecord &&
        imagem == other.imagem &&
        titulo == other.titulo &&
        resumo == other.resumo &&
        texto == other.texto &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, imagem.hashCode), titulo.hashCode), resumo.hashCode),
            texto.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogRecord')
          ..add('imagem', imagem)
          ..add('titulo', titulo)
          ..add('resumo', resumo)
          ..add('texto', texto)
          ..add('reference', reference))
        .toString();
  }
}

class BlogRecordBuilder implements Builder<BlogRecord, BlogRecordBuilder> {
  _$BlogRecord _$v;

  String _imagem;
  String get imagem => _$this._imagem;
  set imagem(String imagem) => _$this._imagem = imagem;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _resumo;
  String get resumo => _$this._resumo;
  set resumo(String resumo) => _$this._resumo = resumo;

  String _texto;
  String get texto => _$this._texto;
  set texto(String texto) => _$this._texto = texto;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BlogRecordBuilder() {
    BlogRecord._initializeBuilder(this);
  }

  BlogRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagem = $v.imagem;
      _titulo = $v.titulo;
      _resumo = $v.resumo;
      _texto = $v.texto;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlogRecord;
  }

  @override
  void update(void Function(BlogRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlogRecord build() {
    final _$result = _$v ??
        new _$BlogRecord._(
            imagem: imagem,
            titulo: titulo,
            resumo: resumo,
            texto: texto,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
