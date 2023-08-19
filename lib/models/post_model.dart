import 'category_model.dart';

class PostModel {
  final int id;
  final CategoryModel category;
  final String title;
  final String shortDescription;
  final String description;
  final String slug;
  final bool? authorOffered;
  final DateTime? publish;
  final bool? isPinned;
  final int? numberOfViews;
  final String image;
  final String imageExtraLarge;
  final String imageLarge;
  final String imageMedium;
  final String imageSmall;
  final String? imageSource;
  final String? imageName;
  final List<String> gallery;
  final String? shortUrl;
  final String? youtubeLink;
  final List<String> tags;
  final DateTime? expiredAt;
  final String language;

  PostModel({
    required this.id,
    required this.category,
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.slug,
    this.authorOffered,
    this.publish,
    this.isPinned,
    this.numberOfViews,
    required this.image,
    required this.imageExtraLarge,
    required this.imageLarge,
    required this.imageMedium,
    required this.imageSmall,
    this.imageSource,
    this.imageName,
    required this.gallery,
    this.shortUrl,
    this.youtubeLink,
    required this.tags,
    this.expiredAt,
    required this.language,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      category: CategoryModel.fromJson(json['category']),
      title: json['title'],
      shortDescription: json['short_description'],
      description: json['description'],
      slug: json['slug'],
      authorOffered: json['author_offered'],
      publish: DateTime.parse(json['publish']),
      isPinned: json['is_pinned'],
      numberOfViews: json['number_of_views'],
      image: json['image'],
      imageExtraLarge: json['image_extra_large'],
      imageLarge: json['image_large'],
      imageMedium: json['image_medium'],
      imageSmall: json['image_small'],
      imageSource: json['image_source'],
      imageName: json['image_name'],
      gallery: json['gallery'],
      shortUrl: json['short_url'],
      youtubeLink: json['youtube_link'],
      tags: json['tags'],
      expiredAt: json['expired_at'],
      language: json['language'],
    );
  }
}
