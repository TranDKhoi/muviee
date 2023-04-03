class GenreModel {
  int? id;
  String? name;

  GenreModel({this.id, this.name});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory GenreModel.fromJson(Map<String, dynamic> map) {
    return GenreModel(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
}
