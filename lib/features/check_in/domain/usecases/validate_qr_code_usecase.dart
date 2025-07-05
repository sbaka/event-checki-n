import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';
import 'package:event_check_in/features/check_in/domain/repositories/check_in_repository.dart';

@injectable
class ValidateQrCodeUseCase {
  ValidateQrCodeUseCase(this._repository);
  final CheckInRepository _repository;

  Future<Either<Failure, Attendee?>> call(String qrCode) async {
    return _repository.validateQrCode(qrCode);
  }
}
