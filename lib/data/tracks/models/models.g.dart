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
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      position: json['position'] == null
          ? null
          : PositionModel.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemoryModelImplToJson(_$MemoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
      'photos': instance.photos,
      'position': instance.position,
    };

_$TrackModelImpl _$$TrackModelImplFromJson(Map<String, dynamic> json) =>
    _$TrackModelImpl(
      id: json['id'] as String?,
      trackId: json['trackId'] as String?,
      creatorId: json['creatorId'] as String?,
      dateCreated:
          const DateConverter().fromJson(json['dateCreated'] as String?),
      name: json['name'] as String?,
      comment: json['comment'] as String?,
      positions: const ListPositionDataConverter()
          .fromJson(json['positions'] as List?),
      distance: (json['distance'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toInt(),
      averageSpeed: (json['averageSpeed'] as num?)?.toDouble(),
      maxAltitude: (json['maxAltitude'] as num?)?.toDouble(),
      memories:
          const ListMemoryModelConverter().fromJson(json['memories'] as List?),
    );

Map<String, dynamic> _$$TrackModelImplToJson(_$TrackModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trackId': instance.trackId,
      'creatorId': instance.creatorId,
      'dateCreated': const DateConverter().toJson(instance.dateCreated),
      'name': instance.name,
      'comment': instance.comment,
      'positions': const ListPositionDataConverter().toJson(instance.positions),
      'distance': instance.distance,
      'duration': instance.duration,
      'averageSpeed': instance.averageSpeed,
      'maxAltitude': instance.maxAltitude,
      'memories': const ListMemoryModelConverter().toJson(instance.memories),
    };
