import 'package:json_annotation/json_annotation.dart';
part 'movie_model.g.dart';
//

@JsonSerializable()
class MovieModel {
  String Title;
  String Year;
  String imdbRating;
  // 2
  String Type;
  String Poster;
  MovieModel({
    required this.Title,
    required this.Year,
    required this.imdbRating,
    required this.Type,
    required this.Poster,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
