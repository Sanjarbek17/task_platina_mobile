// Category{
// id*	[...]
// name*	string
// title: Номи
// maxLength: 255
// slug*	string
// maxLength: 255
// pattern: ^[-a-zA-Z0-9_]+$
// color	string
// title: Ранг
// pattern: ^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$
// maxLength: 18
// }

// create categorymodel
class CategoryModel {
  final int id;
  final String name;
  final String slug;
  final String color;

  CategoryModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.color,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      color: json['color'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'color': color,
    };
  }
}