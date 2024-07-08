// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post2_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post2Model _$Post2ModelFromJson(Map<String, dynamic> json) {
  return _Post2Model.fromJson(json);
}

/// @nodoc
mixin _$Post2Model {
  int? get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Post2ModelCopyWith<Post2Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Post2ModelCopyWith<$Res> {
  factory $Post2ModelCopyWith(
          Post2Model value, $Res Function(Post2Model) then) =
      _$Post2ModelCopyWithImpl<$Res, Post2Model>;
  @useResult
  $Res call({int? userId, int? id, String? title, String? body});
}

/// @nodoc
class _$Post2ModelCopyWithImpl<$Res, $Val extends Post2Model>
    implements $Post2ModelCopyWith<$Res> {
  _$Post2ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Post2ModelImplCopyWith<$Res>
    implements $Post2ModelCopyWith<$Res> {
  factory _$$Post2ModelImplCopyWith(
          _$Post2ModelImpl value, $Res Function(_$Post2ModelImpl) then) =
      __$$Post2ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? userId, int? id, String? title, String? body});
}

/// @nodoc
class __$$Post2ModelImplCopyWithImpl<$Res>
    extends _$Post2ModelCopyWithImpl<$Res, _$Post2ModelImpl>
    implements _$$Post2ModelImplCopyWith<$Res> {
  __$$Post2ModelImplCopyWithImpl(
      _$Post2ModelImpl _value, $Res Function(_$Post2ModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$Post2ModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Post2ModelImpl implements _Post2Model {
  _$Post2ModelImpl({this.userId, this.id, this.title, this.body});

  factory _$Post2ModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$Post2ModelImplFromJson(json);

  @override
  final int? userId;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'Post2Model(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Post2ModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Post2ModelImplCopyWith<_$Post2ModelImpl> get copyWith =>
      __$$Post2ModelImplCopyWithImpl<_$Post2ModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Post2ModelImplToJson(
      this,
    );
  }
}

abstract class _Post2Model implements Post2Model {
  factory _Post2Model(
      {final int? userId,
      final int? id,
      final String? title,
      final String? body}) = _$Post2ModelImpl;

  factory _Post2Model.fromJson(Map<String, dynamic> json) =
      _$Post2ModelImpl.fromJson;

  @override
  int? get userId;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$Post2ModelImplCopyWith<_$Post2ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
