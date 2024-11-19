import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:trydos/features/chat/domain/repositories/chat_repository.dart';
import 'package:trydos/features/home/data/models/get_count_likes_of_product_model.dart';
import 'package:trydos/features/home/data/models/update_item_in_cart_model.dart';
import 'package:trydos/features/home/domain/repositories/home_repository.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class AddLikeToProductUsecase
    extends UseCase<bool, AddLikeToProductParams> {
  final HomeRepository repository;

 AddLikeToProductUsecase(this.repository);

  @override
  Future<Either<Failure,bool>> call(
     AddLikeToProductParams params) {
    return repository.addLikeOFProduct(params.map);
  }
}

class AddLikeToProductParams {
  String? userId;
  String? productId;
AddLikeToProductParams({this.productId, this.userId});
  Map<String, dynamic> get map => {"user_id": userId, "product_id": productId};
}