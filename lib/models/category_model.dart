
class CategoriesModel {
  String? categoriesId;
  String? categoriesImg;
  String? categoriesName;
  dynamic createdAt;
  dynamic updatedAt;

  CategoriesModel({this.categoriesId, this.categoriesImg, this.categoriesName, this.createdAt, this.updatedAt});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json["categoriesId"];
    categoriesImg = json["categoriesImg"];
    categoriesName = json["categoriesName"];
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["categoriesId"] = categoriesId;
    data["categoriesImg"] = categoriesImg;
    data["categoriesName"] = categoriesName;
    data["createdAt"] = createdAt;
    data["updatedAt"] = updatedAt;
    return data;
  }
}