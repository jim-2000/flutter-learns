// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      Title: json['Title'] as String,
      Year: json['Year'] as String,
      imdbRating: json['imdbRating'] as String,
      Type: json['type'] as String,
      Poster: json['Poster'] as String,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'title': instance.Title,
      'Year': instance.Year,
      'imdbRating': instance.imdbRating,
      'Type': instance.Type,
      'Poster': instance.Poster,
    };
