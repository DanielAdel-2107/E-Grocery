class ErrorModel {
  final String? title;

  ErrorModel({
    this.title,
  });

  factory ErrorModel.fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return ErrorModel(
        title: json["title"] ?? "Unknown error",
      );
    } else {
      return ErrorModel(
        title: json.toString(),
      );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
    };
  }
}
