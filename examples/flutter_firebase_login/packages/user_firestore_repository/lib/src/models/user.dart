import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({required this.id, 
  required this.email, 
  required this.firstName,
  required this.lastName,
  required this.joinDate,
  required this.username,
  });

  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String joinDate;
  final String username;

  User copyWith({
      String? email,
      String? firstName,
      String? lastName,
      String? joinDate,
      String? username
    }) {
    return User(
      id: id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      joinDate: joinDate ?? this.joinDate,
      username: username ?? this.username,
    );
  }

  @override
  List<Object> get props => [id, username, email, firstName, lastName, 
                            joinDate];
}
