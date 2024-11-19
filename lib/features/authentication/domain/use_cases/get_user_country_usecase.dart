

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trydos/features/authentication/data/models/create_user_response_model.dart';
import 'package:trydos/features/authentication/data/models/verify_otp_sign_up_and_in_response_model.dart';
import 'package:trydos/features/authentication/domain/repositories/auth_repository.dart';



import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../../data/models/get_user_country_response_model.dart';
@injectable
class GetUserCountryUseCase implements UseCase<GetUserCountryResponseModel , NoParams>{
  final AuthRepository repository;

  GetUserCountryUseCase(this.repository);

  @override
  Future<Either<Failure, GetUserCountryResponseModel>> call(NoParams params) {
    return repository.getUserCountry();
  }

}