class AuthService {
  Future<String> signIn(String email, String password) async {
    return "token_example"; // real service
  }
}

class AuthLogic {
  final AuthService service;
  AuthLogic(this.service);

  Future<String> login(String email, String password) async {
    try {
      return await service.signIn(email, password);
    } catch (_) {
      return 'error';
    }
  }
}

void main() async {
  final logic = AuthLogic(AuthService());
  print(await logic.login("a", "b"));
}
