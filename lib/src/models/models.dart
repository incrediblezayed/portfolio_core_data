abstract class Model {
  const Model();
  factory Model.fromJson(String source) {
    throw UnimplementedError('fromJson() is not implemented $source');
  }
  factory Model.fromMap(Map<String, dynamic> map) {
    throw UnimplementedError('fromMap() is not implemented $map');
  }
  Map<String, dynamic> toMap();
  String toJson();
}
