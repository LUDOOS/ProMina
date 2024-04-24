class GalleryModel {
  final List<String> images;
  final String message;

  GalleryModel({
    required this.images,
    required this.message,
  });

  factory GalleryModel.fromJson(Map<String, dynamic> json) {
    return GalleryModel(
      images: List<String>.from(json['data']['images'] as List<dynamic>),
      message: json['message'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': {
        'images': images,
      },
      'message': message,
    };
  }
}
