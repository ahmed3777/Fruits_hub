class UserEntity {
  final String email;
  final String uId;
  final String name;
  
  UserEntity(  {required this.email, required this.uId, required this.name});

  toMap() {
    return {
      'email': email,
      'uId': uId,
      'name': name,
    };
  }
}