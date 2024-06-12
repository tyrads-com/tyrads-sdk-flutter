import 'package:tyrads_sdk/src/acmo/modules/users/repository.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoUsersController {
  final _repo = AcmoUsersRepository();
  var fd = <String, dynamic>{};
  var submiting = false;

  updateUser(id) async {
    try {
      await _repo.updateUser(id, fd);
      Tyrads.instance.newUser = false;
    } catch (e) {}
  }
}
