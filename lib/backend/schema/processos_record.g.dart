// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProcessosRecord> _$processosRecordSerializer =
    new _$ProcessosRecordSerializer();

class _$ProcessosRecordSerializer
    implements StructuredSerializer<ProcessosRecord> {
  @override
  final Iterable<Type> types = const [ProcessosRecord, _$ProcessosRecord];
  @override
  final String wireName = 'ProcessosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProcessosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.numeroprocesso;
    if (value != null) {
      result
        ..add('numeroprocesso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.problema;
    if (value != null) {
      result
        ..add('problema')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.valorenvolvido;
    if (value != null) {
      result
        ..add('valorenvolvido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.areadodireito;
    if (value != null) {
      result
        ..add('areadodireito')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.andamento;
    if (value != null) {
      result
        ..add('andamento')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.assinatura;
    if (value != null) {
      result
        ..add('assinatura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.termo1;
    if (value != null) {
      result
        ..add('termo1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.usuariopropietario;
    if (value != null) {
      result
        ..add('usuariopropietario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.valorcobrado;
    if (value != null) {
      result
        ..add('valorcobrado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.solicitarpagamento;
    if (value != null) {
      result
        ..add('solicitarpagamento')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  ProcessosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProcessosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'numeroprocesso':
          result.numeroprocesso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'problema':
          result.problema = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'valorenvolvido':
          result.valorenvolvido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'areadodireito':
          result.areadodireito = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'andamento':
          result.andamento.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'assinatura':
          result.assinatura = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'termo1':
          result.termo1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'usuariopropietario':
          result.usuariopropietario = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'valorcobrado':
          result.valorcobrado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'solicitarpagamento':
          result.solicitarpagamento = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$ProcessosRecord extends ProcessosRecord {
  @override
  final String numeroprocesso;
  @override
  final String problema;
  @override
  final String valorenvolvido;
  @override
  final String areadodireito;
  @override
  final String data;
  @override
  final BuiltList<String> andamento;
  @override
  final String assinatura;
  @override
  final bool termo1;
  @override
  final DocumentReference<Object> usuariopropietario;
  @override
  final String valorcobrado;
  @override
  final bool solicitarpagamento;
  @override
  final DocumentReference<Object> reference;

  factory _$ProcessosRecord([void Function(ProcessosRecordBuilder) updates]) =>
      (new ProcessosRecordBuilder()..update(updates)).build();

  _$ProcessosRecord._(
      {this.numeroprocesso,
      this.problema,
      this.valorenvolvido,
      this.areadodireito,
      this.data,
      this.andamento,
      this.assinatura,
      this.termo1,
      this.usuariopropietario,
      this.valorcobrado,
      this.solicitarpagamento,
      this.reference})
      : super._();

  @override
  ProcessosRecord rebuild(void Function(ProcessosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProcessosRecordBuilder toBuilder() =>
      new ProcessosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessosRecord &&
        numeroprocesso == other.numeroprocesso &&
        problema == other.problema &&
        valorenvolvido == other.valorenvolvido &&
        areadodireito == other.areadodireito &&
        data == other.data &&
        andamento == other.andamento &&
        assinatura == other.assinatura &&
        termo1 == other.termo1 &&
        usuariopropietario == other.usuariopropietario &&
        valorcobrado == other.valorcobrado &&
        solicitarpagamento == other.solicitarpagamento &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, numeroprocesso.hashCode),
                                                problema.hashCode),
                                            valorenvolvido.hashCode),
                                        areadodireito.hashCode),
                                    data.hashCode),
                                andamento.hashCode),
                            assinatura.hashCode),
                        termo1.hashCode),
                    usuariopropietario.hashCode),
                valorcobrado.hashCode),
            solicitarpagamento.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProcessosRecord')
          ..add('numeroprocesso', numeroprocesso)
          ..add('problema', problema)
          ..add('valorenvolvido', valorenvolvido)
          ..add('areadodireito', areadodireito)
          ..add('data', data)
          ..add('andamento', andamento)
          ..add('assinatura', assinatura)
          ..add('termo1', termo1)
          ..add('usuariopropietario', usuariopropietario)
          ..add('valorcobrado', valorcobrado)
          ..add('solicitarpagamento', solicitarpagamento)
          ..add('reference', reference))
        .toString();
  }
}

class ProcessosRecordBuilder
    implements Builder<ProcessosRecord, ProcessosRecordBuilder> {
  _$ProcessosRecord _$v;

  String _numeroprocesso;
  String get numeroprocesso => _$this._numeroprocesso;
  set numeroprocesso(String numeroprocesso) =>
      _$this._numeroprocesso = numeroprocesso;

  String _problema;
  String get problema => _$this._problema;
  set problema(String problema) => _$this._problema = problema;

  String _valorenvolvido;
  String get valorenvolvido => _$this._valorenvolvido;
  set valorenvolvido(String valorenvolvido) =>
      _$this._valorenvolvido = valorenvolvido;

  String _areadodireito;
  String get areadodireito => _$this._areadodireito;
  set areadodireito(String areadodireito) =>
      _$this._areadodireito = areadodireito;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  ListBuilder<String> _andamento;
  ListBuilder<String> get andamento =>
      _$this._andamento ??= new ListBuilder<String>();
  set andamento(ListBuilder<String> andamento) => _$this._andamento = andamento;

  String _assinatura;
  String get assinatura => _$this._assinatura;
  set assinatura(String assinatura) => _$this._assinatura = assinatura;

  bool _termo1;
  bool get termo1 => _$this._termo1;
  set termo1(bool termo1) => _$this._termo1 = termo1;

  DocumentReference<Object> _usuariopropietario;
  DocumentReference<Object> get usuariopropietario =>
      _$this._usuariopropietario;
  set usuariopropietario(DocumentReference<Object> usuariopropietario) =>
      _$this._usuariopropietario = usuariopropietario;

  String _valorcobrado;
  String get valorcobrado => _$this._valorcobrado;
  set valorcobrado(String valorcobrado) => _$this._valorcobrado = valorcobrado;

  bool _solicitarpagamento;
  bool get solicitarpagamento => _$this._solicitarpagamento;
  set solicitarpagamento(bool solicitarpagamento) =>
      _$this._solicitarpagamento = solicitarpagamento;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProcessosRecordBuilder() {
    ProcessosRecord._initializeBuilder(this);
  }

  ProcessosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numeroprocesso = $v.numeroprocesso;
      _problema = $v.problema;
      _valorenvolvido = $v.valorenvolvido;
      _areadodireito = $v.areadodireito;
      _data = $v.data;
      _andamento = $v.andamento?.toBuilder();
      _assinatura = $v.assinatura;
      _termo1 = $v.termo1;
      _usuariopropietario = $v.usuariopropietario;
      _valorcobrado = $v.valorcobrado;
      _solicitarpagamento = $v.solicitarpagamento;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProcessosRecord;
  }

  @override
  void update(void Function(ProcessosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProcessosRecord build() {
    _$ProcessosRecord _$result;
    try {
      _$result = _$v ??
          new _$ProcessosRecord._(
              numeroprocesso: numeroprocesso,
              problema: problema,
              valorenvolvido: valorenvolvido,
              areadodireito: areadodireito,
              data: data,
              andamento: _andamento?.build(),
              assinatura: assinatura,
              termo1: termo1,
              usuariopropietario: usuariopropietario,
              valorcobrado: valorcobrado,
              solicitarpagamento: solicitarpagamento,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'andamento';
        _andamento?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProcessosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
