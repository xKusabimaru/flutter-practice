import 'dart:convert';

class Post {
  String id;
  String userId;
  String comment;
  String imageUrl;

  Post({
    required this.id,
    required this.userId,
    required this.comment,
    required this.imageUrl,
  });

  Post copyWith({
    required String id,
    required String userId,
    required String comment,
    required String imageUrl,
  }) {
    return Post(
      id: this.id,
      userId: this.userId,
      comment: this.comment,
      imageUrl: this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'comment': comment,
      'imageUrl': imageUrl,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      userId: map['userId'],
      comment: map['comment'],
      imageUrl: map['imageUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(id: $id, userId: $userId, comment: $comment, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.id == id &&
        other.userId == userId &&
        other.comment == comment &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^ userId.hashCode ^ comment.hashCode ^ imageUrl.hashCode;
  }
}
