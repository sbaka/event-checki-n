import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required String id,
    required String eventId,
    required String name,
    required String description,
    required double price,
    required int quantity,
    required int sold,
    required bool isActive,
    required DateTime saleStartDate,
    required DateTime saleEndDate,
    required TicketType type,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? color,
    Map<String, dynamic>? metadata,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}

@freezed
class TicketType with _$TicketType {
  const factory TicketType.general() = _General;
  const factory TicketType.vip() = _Vip;
  const factory TicketType.earlyBird() = _EarlyBird;
  const factory TicketType.student() = _Student;
  const factory TicketType.senior() = _Senior;
  const factory TicketType.complimentary() = _Complimentary;

  factory TicketType.fromJson(Map<String, dynamic> json) => _$TicketTypeFromJson(json);
}