import 'package:task_platina_mobile/models/post_model.dart';

import 'category_model.dart';

class SearchModel implements PostModel {
  @override
  final CategoryModel category;
  @override
  final String title;
  @override
  final String shortDescription;
  @override
  final String description;
  @override
  final String slug;
  @override
  final DateTime? publish;
  @override
  final int? numberOfViews;
  final String getImageMediumUrl;
  @override
  final String language;

  SearchModel({
    required this.category,
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.slug,
    this.publish,
    this.numberOfViews,
    required this.language,
    required this.getImageMediumUrl,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      category: CategoryModel.fromJson(json['category']),
      title: json['title'],
      shortDescription: json['short_description'],
      description: json['description'],
      slug: json['slug'],
      publish: DateTime.parse(json['publish']),
      numberOfViews: json['number_of_views'],
      language: json['language'],
      getImageMediumUrl: json['get_image_medium_url'],
    );
  }

  @override
  bool? get authorOffered => throw UnimplementedError();

  @override
  DateTime? get expiredAt => throw UnimplementedError();

  @override
  List get gallery => throw UnimplementedError();

  @override
  String get image => throw UnimplementedError();

  @override
  String get imageExtraLarge => throw UnimplementedError();

  @override
  String get imageLarge => throw UnimplementedError();

  @override
  String get imageMedium => getImageMediumUrl;

  @override
  String? get imageName => throw UnimplementedError();

  @override
  String get imageSmall => throw UnimplementedError();

  @override
  String? get imageSource => throw UnimplementedError();

  @override
  bool? get isPinned => throw UnimplementedError();

  @override
  String? get shortUrl => throw UnimplementedError();

  @override
  List get tags => throw UnimplementedError();

  @override
  String? get youtubeLink => throw UnimplementedError();
  
  @override
  int get id => throw UnimplementedError();
}
