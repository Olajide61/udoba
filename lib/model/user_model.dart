class UserModel {
  String? id;
  String? name;
  String? title;
  String? description;
  String? image;
  String? loc;

  UserModel(
      {this.title, this.name, this.description, this.image, this.id, this.loc});

  UserModel.fromJson(dynamic json) {
    loc = json['location'];
    title = json['title'];
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['location'] = this.loc;
    data['title'] = this.title;
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}
