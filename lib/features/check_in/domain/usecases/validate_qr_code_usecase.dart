import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../event_management/domain/entities/attendee.dart';
import '../repositories/check_in_repository.dart';

@injectable
class ValidateQrCodeUseCase {
  final CheckInRepository _repository;

  ValidateQrCodeUseCase(this._repository);

  Future<Either<Failure, Attendee?>> call(String qrCode) async {
    return _repository.validateQrCode(qrCode);
  }
}