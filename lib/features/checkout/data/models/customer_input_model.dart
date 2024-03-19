class CustomerInputModel {
  final String? name;
  final String? email;

  CustomerInputModel({
    this.name,
    this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
    };
  }
}
