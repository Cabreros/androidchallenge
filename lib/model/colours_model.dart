class Colour {
  int? id;
  String? title;
  String? userName;
  int? numViews;
  int? numVotes;
  int? numComments;
  int? numHearts;
  int? rank;
  String? dateCreated;
  String? hex;
  Rgb? rgb;
  Hsv? hsv;
  String? description;
  String? url;
  String? imageUrl;
  String? badgeUrl;
  String? apiUrl;

  Colour(
      {this.id,
      this.title,
      this.userName,
      this.numViews,
      this.numVotes,
      this.numComments,
      this.numHearts,
      this.rank,
      this.dateCreated,
      this.hex,
      this.rgb,
      this.hsv,
      this.description,
      this.url,
      this.imageUrl,
      this.badgeUrl,
      this.apiUrl});

  Colour.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    userName = json['userName'];
    numViews = json['numViews'];
    numVotes = json['numVotes'];
    numComments = json['numComments'];
    numHearts = json['numHearts'];
    rank = json['rank'];
    dateCreated = json['dateCreated'];
    hex = json['hex'];
    rgb = json['rgb'] != null ? new Rgb.fromJson(json['rgb']) : null;
    hsv = json['hsv'] != null ? new Hsv.fromJson(json['hsv']) : null;
    description = json['description'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    badgeUrl = json['badgeUrl'];
    apiUrl = json['apiUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['userName'] = this.userName;
    data['numViews'] = this.numViews;
    data['numVotes'] = this.numVotes;
    data['numComments'] = this.numComments;
    data['numHearts'] = this.numHearts;
    data['rank'] = this.rank;
    data['dateCreated'] = this.dateCreated;
    data['hex'] = this.hex;
    if (this.rgb != null) {
      data['rgb'] = this.rgb!.toJson();
    }
    if (this.hsv != null) {
      data['hsv'] = this.hsv!.toJson();
    }
    data['description'] = this.description;
    data['url'] = this.url;
    data['imageUrl'] = this.imageUrl;
    data['badgeUrl'] = this.badgeUrl;
    data['apiUrl'] = this.apiUrl;
    return data;
  }
}

class Rgb {
  int? red;
  int? green;
  int? blue;

  Rgb({this.red, this.green, this.blue});

  Rgb.fromJson(Map<String, dynamic> json) {
    red = json['red'];
    green = json['green'];
    blue = json['blue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // ignore: unnecessary_this
    data['red'] = this.red;
    data['green'] = this.green;
    data['blue'] = this.blue;
    return data;
  }
}

class Hsv {
  int? hue;
  int? saturation;
  int? value;

  Hsv({this.hue, this.saturation, this.value});

  Hsv.fromJson(Map<String, dynamic> json) {
    hue = json['hue'];
    saturation = json['saturation'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hue'] = this.hue;
    data['saturation'] = this.saturation;
    data['value'] = this.value;
    return data;
  }
}
