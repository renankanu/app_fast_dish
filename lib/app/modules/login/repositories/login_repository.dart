import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/login_repository_interface.dart';

part 'login_repository.g.dart';

@Injectable()
class LoginRepository implements ILoginRepository {
  @override
  Future fetchPost() {
    throw UnimplementedError();
  }

  @override
  void dispose() {}
}
