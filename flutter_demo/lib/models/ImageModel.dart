
class ImageModel {
  String url;
  String title;

  ImageModel(this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.title = json['title'];
  }
}