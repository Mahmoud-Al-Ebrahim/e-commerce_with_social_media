import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mime_type/mime_type.dart';
import 'package:trydos/common/constant/configuration/cloudinary_url_routes.dart';
import 'package:trydos/core/data/model/upload_file_cloudinary_response.dart';
import 'package:trydos/core/domin/repositories/common_use_repository.dart';
import 'package:trydos/core/error/failures.dart';
import 'package:trydos/core/use_case/use_case.dart';

@injectable
class UploadFileCloudinaryUseCase extends UseCase<
    UploadFileCloudinaryResponseModel, UploadFileCloudinaryParams> {
  final CommonUseRepository repository;

  UploadFileCloudinaryUseCase(this.repository);

  @override
  Future<Either<Failure, UploadFileCloudinaryResponseModel>> call(
      UploadFileCloudinaryParams params) async {
    // TODO: implement call

    final Map<String, dynamic> map = await params.map();

    return repository.uploadFileCloudinary(map);
  }
}

class UploadFileCloudinaryParams {
  UploadFileCloudinaryParams(
      {required this.file,
      required this.usingOnUploadingFinishedFunction,
      required this.usingSendProgressFunction});

  File file;
  bool usingOnUploadingFinishedFunction;

  bool usingSendProgressFunction;

  Future<Map<String, dynamic>> map() async {
    var data = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        file.path,
      ),
      "upload_preset": CloudinaryUrls.LoadPreset
    });
    return {
      'data': data,
      'usingOnUploadingFinishedFunction': usingOnUploadingFinishedFunction,
      'usingSendProgressFunction': usingSendProgressFunction
    };
  }
}
