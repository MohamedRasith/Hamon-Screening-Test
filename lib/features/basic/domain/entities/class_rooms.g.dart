// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassRooms _$$_ClassRoomsFromJson(Map<String, dynamic> json) =>
    _$_ClassRooms(
      classrooms: (json['classrooms'] as List<dynamic>?)
          ?.map((e) => ClassRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClassRoomsToJson(_$_ClassRooms instance) =>
    <String, dynamic>{
      'classrooms': instance.classrooms,
    };
