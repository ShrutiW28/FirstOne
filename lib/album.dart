class Album{
  final int id;
  final int albumId;
  final String albumName;
  final String name;

  const Album({required this.id,required this.albumId,required this.albumName, required this.name});

  static Album fromMap(Map<String, dynamic> map) {
    return Album(id: map['userId'], albumId: map['id'], albumName: map['title'], name: 'Some name');
  }

  void printHi() {}

  // const Album({required this.id,required this.albumName,});
  //
  // static Album fromMap(Map<String, dynamic> map) {
  //   return Album(id: map['userId'],  albumName: map['title']);
  // }
}

void main() {
  Album album = Album(id: 1, albumId: 1, albumName: 'Hi', name: '');
  album.printHi();
}




