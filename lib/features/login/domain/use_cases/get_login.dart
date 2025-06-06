import "package:fpdart/fpdart.dart";

import "../../../../core/constants/classes/use_case.dart";
import "../../../../core/errors/failure.dart";
import "../../data/models/params/login_params.dart";
import "../entities/login_entity.dart";
import "../repositories/login_repository.dart";

class GetLogin implements UseCase<LoginEntity, LoginParams> {
  final LoginRepository loginRepository;

  GetLogin({required this.loginRepository});

  @override
  Future<Either<Failure, LoginEntity>> call({required LoginParams params}) {
    return loginRepository.getLogin(loginParams: params);
  }
}
