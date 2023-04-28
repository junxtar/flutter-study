// ignore_for_file: public_member_api_docs, sort_constructors_first

class WebtoonModel {
  final String title, thumb, id;
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        thumb = json["thumb"],
        id = json["id"];
}
