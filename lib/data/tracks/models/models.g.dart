// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionModelImpl _$$PositionModelImplFromJson(Map<String, dynamic> json) =>
    _$PositionModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PositionModelImplToJson(_$PositionModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
    };

_$PositionDataModelImpl _$$PositionDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PositionDataModelImpl(
      positions: (json['positions'] as List<dynamic>?)
          ?.map((e) => PositionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PositionDataModelImplToJson(
        _$PositionDataModelImpl instance) =>
    <String, dynamic>{
      'positions': instance.positions,
    };

_$MemoryModelImpl _$$MemoryModelImplFromJson(Map<String, dynamic> json) =>
    _$MemoryModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      comment: json['comment'] as String?,
      uploadedPhotos: (json['uploadedPhotos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      photos: const UInt8ListConverter().fromJson(json['photos'] as String?),
      position: json['position'] == null
          ? null
          : PositionModel.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemoryModelImplToJson(_$MemoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
      'uploadedPhotos': instance.uploadedPhotos,
      'photos': const UInt8ListConverter().toJson(instance.photos),
      'position': instance.position,
    };

_$TrackModelImpl _$$TrackModelImplFromJson(Map<String, dynamic> json) =>
    _$TrackModelImpl(
      id: json['id'] as String?,
      creatorId: json['creatorId'] as String?,
      positions: (json['positions'] as List<dynamic>?)
          ?.map((e) => PositionDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      distance: (json['distance'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toInt(),
      averageSpeed: (json['averageSpeed'] as num?)?.toDouble(),
      maxAltitude: (json['maxAltitude'] as num?)?.toDouble(),
      memories: (json['memories'] as List<dynamic>?)
          ?.map((e) => MemoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrackModelImplToJson(_$TrackModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'positions': instance.positions,
      'distance': instance.distance,
      'duration': instance.duration,
      'averageSpeed': instance.averageSpeed,
      'maxAltitude': instance.maxAltitude,
      'memories': instance.memories,
    };
