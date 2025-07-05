// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $EventsTable extends Events with TableInfo<$EventsTable, EventData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endDateMeta =
      const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
      'end_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _organizerIdMeta =
      const VerificationMeta('organizerId');
  @override
  late final GeneratedColumn<String> organizerId = GeneratedColumn<String>(
      'organizer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'));
  static const VerificationMeta _maxAttendeesMeta =
      const VerificationMeta('maxAttendees');
  @override
  late final GeneratedColumn<int> maxAttendees = GeneratedColumn<int>(
      'max_attendees', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _allowCheckInMeta =
      const VerificationMeta('allowCheckIn');
  @override
  late final GeneratedColumn<bool> allowCheckIn = GeneratedColumn<bool>(
      'allow_check_in', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("allow_check_in" IN (0, 1))'));
  static const VerificationMeta _requiresApprovalMeta =
      const VerificationMeta('requiresApproval');
  @override
  late final GeneratedColumn<bool> requiresApproval = GeneratedColumn<bool>(
      'requires_approval', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("requires_approval" IN (0, 1))'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contactEmailMeta =
      const VerificationMeta('contactEmail');
  @override
  late final GeneratedColumn<String> contactEmail = GeneratedColumn<String>(
      'contact_email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contactPhoneMeta =
      const VerificationMeta('contactPhone');
  @override
  late final GeneratedColumn<String> contactPhone = GeneratedColumn<String>(
      'contact_phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _metadataMeta =
      const VerificationMeta('metadata');
  @override
  late final GeneratedColumn<String> metadata = GeneratedColumn<String>(
      'metadata', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        startDate,
        endDate,
        location,
        organizerId,
        status,
        isActive,
        maxAttendees,
        allowCheckIn,
        requiresApproval,
        createdAt,
        updatedAt,
        imageUrl,
        contactEmail,
        contactPhone,
        metadata
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'events';
  @override
  VerificationContext validateIntegrity(Insertable<EventData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    } else if (isInserting) {
      context.missing(_endDateMeta);
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('organizer_id')) {
      context.handle(
          _organizerIdMeta,
          organizerId.isAcceptableOrUnknown(
              data['organizer_id']!, _organizerIdMeta));
    } else if (isInserting) {
      context.missing(_organizerIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('max_attendees')) {
      context.handle(
          _maxAttendeesMeta,
          maxAttendees.isAcceptableOrUnknown(
              data['max_attendees']!, _maxAttendeesMeta));
    } else if (isInserting) {
      context.missing(_maxAttendeesMeta);
    }
    if (data.containsKey('allow_check_in')) {
      context.handle(
          _allowCheckInMeta,
          allowCheckIn.isAcceptableOrUnknown(
              data['allow_check_in']!, _allowCheckInMeta));
    } else if (isInserting) {
      context.missing(_allowCheckInMeta);
    }
    if (data.containsKey('requires_approval')) {
      context.handle(
          _requiresApprovalMeta,
          requiresApproval.isAcceptableOrUnknown(
              data['requires_approval']!, _requiresApprovalMeta));
    } else if (isInserting) {
      context.missing(_requiresApprovalMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('contact_email')) {
      context.handle(
          _contactEmailMeta,
          contactEmail.isAcceptableOrUnknown(
              data['contact_email']!, _contactEmailMeta));
    }
    if (data.containsKey('contact_phone')) {
      context.handle(
          _contactPhoneMeta,
          contactPhone.isAcceptableOrUnknown(
              data['contact_phone']!, _contactPhoneMeta));
    }
    if (data.containsKey('metadata')) {
      context.handle(_metadataMeta,
          metadata.isAcceptableOrUnknown(data['metadata']!, _metadataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EventData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EventData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date'])!,
      endDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_date'])!,
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location'])!,
      organizerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}organizer_id'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      maxAttendees: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_attendees'])!,
      allowCheckIn: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}allow_check_in'])!,
      requiresApproval: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}requires_approval'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      contactEmail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_email']),
      contactPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_phone']),
      metadata: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}metadata']),
    );
  }

  @override
  $EventsTable createAlias(String alias) {
    return $EventsTable(attachedDatabase, alias);
  }
}

class EventData extends DataClass implements Insertable<EventData> {
  final String id;
  final String name;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final String location;
  final String organizerId;
  final String status;
  final bool isActive;
  final int maxAttendees;
  final bool allowCheckIn;
  final bool requiresApproval;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? imageUrl;
  final String? contactEmail;
  final String? contactPhone;
  final String? metadata;
  const EventData(
      {required this.id,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.location,
      required this.organizerId,
      required this.status,
      required this.isActive,
      required this.maxAttendees,
      required this.allowCheckIn,
      required this.requiresApproval,
      required this.createdAt,
      required this.updatedAt,
      this.imageUrl,
      this.contactEmail,
      this.contactPhone,
      this.metadata});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['start_date'] = Variable<DateTime>(startDate);
    map['end_date'] = Variable<DateTime>(endDate);
    map['location'] = Variable<String>(location);
    map['organizer_id'] = Variable<String>(organizerId);
    map['status'] = Variable<String>(status);
    map['is_active'] = Variable<bool>(isActive);
    map['max_attendees'] = Variable<int>(maxAttendees);
    map['allow_check_in'] = Variable<bool>(allowCheckIn);
    map['requires_approval'] = Variable<bool>(requiresApproval);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || contactEmail != null) {
      map['contact_email'] = Variable<String>(contactEmail);
    }
    if (!nullToAbsent || contactPhone != null) {
      map['contact_phone'] = Variable<String>(contactPhone);
    }
    if (!nullToAbsent || metadata != null) {
      map['metadata'] = Variable<String>(metadata);
    }
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      startDate: Value(startDate),
      endDate: Value(endDate),
      location: Value(location),
      organizerId: Value(organizerId),
      status: Value(status),
      isActive: Value(isActive),
      maxAttendees: Value(maxAttendees),
      allowCheckIn: Value(allowCheckIn),
      requiresApproval: Value(requiresApproval),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      contactEmail: contactEmail == null && nullToAbsent
          ? const Value.absent()
          : Value(contactEmail),
      contactPhone: contactPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(contactPhone),
      metadata: metadata == null && nullToAbsent
          ? const Value.absent()
          : Value(metadata),
    );
  }

  factory EventData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EventData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime>(json['endDate']),
      location: serializer.fromJson<String>(json['location']),
      organizerId: serializer.fromJson<String>(json['organizerId']),
      status: serializer.fromJson<String>(json['status']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      maxAttendees: serializer.fromJson<int>(json['maxAttendees']),
      allowCheckIn: serializer.fromJson<bool>(json['allowCheckIn']),
      requiresApproval: serializer.fromJson<bool>(json['requiresApproval']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      contactEmail: serializer.fromJson<String?>(json['contactEmail']),
      contactPhone: serializer.fromJson<String?>(json['contactPhone']),
      metadata: serializer.fromJson<String?>(json['metadata']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime>(endDate),
      'location': serializer.toJson<String>(location),
      'organizerId': serializer.toJson<String>(organizerId),
      'status': serializer.toJson<String>(status),
      'isActive': serializer.toJson<bool>(isActive),
      'maxAttendees': serializer.toJson<int>(maxAttendees),
      'allowCheckIn': serializer.toJson<bool>(allowCheckIn),
      'requiresApproval': serializer.toJson<bool>(requiresApproval),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'contactEmail': serializer.toJson<String?>(contactEmail),
      'contactPhone': serializer.toJson<String?>(contactPhone),
      'metadata': serializer.toJson<String?>(metadata),
    };
  }

  EventData copyWith(
          {String? id,
          String? name,
          String? description,
          DateTime? startDate,
          DateTime? endDate,
          String? location,
          String? organizerId,
          String? status,
          bool? isActive,
          int? maxAttendees,
          bool? allowCheckIn,
          bool? requiresApproval,
          DateTime? createdAt,
          DateTime? updatedAt,
          Value<String?> imageUrl = const Value.absent(),
          Value<String?> contactEmail = const Value.absent(),
          Value<String?> contactPhone = const Value.absent(),
          Value<String?> metadata = const Value.absent()}) =>
      EventData(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        location: location ?? this.location,
        organizerId: organizerId ?? this.organizerId,
        status: status ?? this.status,
        isActive: isActive ?? this.isActive,
        maxAttendees: maxAttendees ?? this.maxAttendees,
        allowCheckIn: allowCheckIn ?? this.allowCheckIn,
        requiresApproval: requiresApproval ?? this.requiresApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        contactEmail:
            contactEmail.present ? contactEmail.value : this.contactEmail,
        contactPhone:
            contactPhone.present ? contactPhone.value : this.contactPhone,
        metadata: metadata.present ? metadata.value : this.metadata,
      );
  EventData copyWithCompanion(EventsCompanion data) {
    return EventData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      location: data.location.present ? data.location.value : this.location,
      organizerId:
          data.organizerId.present ? data.organizerId.value : this.organizerId,
      status: data.status.present ? data.status.value : this.status,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      maxAttendees: data.maxAttendees.present
          ? data.maxAttendees.value
          : this.maxAttendees,
      allowCheckIn: data.allowCheckIn.present
          ? data.allowCheckIn.value
          : this.allowCheckIn,
      requiresApproval: data.requiresApproval.present
          ? data.requiresApproval.value
          : this.requiresApproval,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      contactEmail: data.contactEmail.present
          ? data.contactEmail.value
          : this.contactEmail,
      contactPhone: data.contactPhone.present
          ? data.contactPhone.value
          : this.contactPhone,
      metadata: data.metadata.present ? data.metadata.value : this.metadata,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EventData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('location: $location, ')
          ..write('organizerId: $organizerId, ')
          ..write('status: $status, ')
          ..write('isActive: $isActive, ')
          ..write('maxAttendees: $maxAttendees, ')
          ..write('allowCheckIn: $allowCheckIn, ')
          ..write('requiresApproval: $requiresApproval, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('contactEmail: $contactEmail, ')
          ..write('contactPhone: $contactPhone, ')
          ..write('metadata: $metadata')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      description,
      startDate,
      endDate,
      location,
      organizerId,
      status,
      isActive,
      maxAttendees,
      allowCheckIn,
      requiresApproval,
      createdAt,
      updatedAt,
      imageUrl,
      contactEmail,
      contactPhone,
      metadata);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EventData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.location == this.location &&
          other.organizerId == this.organizerId &&
          other.status == this.status &&
          other.isActive == this.isActive &&
          other.maxAttendees == this.maxAttendees &&
          other.allowCheckIn == this.allowCheckIn &&
          other.requiresApproval == this.requiresApproval &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.imageUrl == this.imageUrl &&
          other.contactEmail == this.contactEmail &&
          other.contactPhone == this.contactPhone &&
          other.metadata == this.metadata);
}

class EventsCompanion extends UpdateCompanion<EventData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> startDate;
  final Value<DateTime> endDate;
  final Value<String> location;
  final Value<String> organizerId;
  final Value<String> status;
  final Value<bool> isActive;
  final Value<int> maxAttendees;
  final Value<bool> allowCheckIn;
  final Value<bool> requiresApproval;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String?> imageUrl;
  final Value<String?> contactEmail;
  final Value<String?> contactPhone;
  final Value<String?> metadata;
  final Value<int> rowid;
  const EventsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.location = const Value.absent(),
    this.organizerId = const Value.absent(),
    this.status = const Value.absent(),
    this.isActive = const Value.absent(),
    this.maxAttendees = const Value.absent(),
    this.allowCheckIn = const Value.absent(),
    this.requiresApproval = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.contactEmail = const Value.absent(),
    this.contactPhone = const Value.absent(),
    this.metadata = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EventsCompanion.insert({
    required String id,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String location,
    required String organizerId,
    required String status,
    required bool isActive,
    required int maxAttendees,
    required bool allowCheckIn,
    required bool requiresApproval,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.imageUrl = const Value.absent(),
    this.contactEmail = const Value.absent(),
    this.contactPhone = const Value.absent(),
    this.metadata = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        description = Value(description),
        startDate = Value(startDate),
        endDate = Value(endDate),
        location = Value(location),
        organizerId = Value(organizerId),
        status = Value(status),
        isActive = Value(isActive),
        maxAttendees = Value(maxAttendees),
        allowCheckIn = Value(allowCheckIn),
        requiresApproval = Value(requiresApproval),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<EventData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? location,
    Expression<String>? organizerId,
    Expression<String>? status,
    Expression<bool>? isActive,
    Expression<int>? maxAttendees,
    Expression<bool>? allowCheckIn,
    Expression<bool>? requiresApproval,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? imageUrl,
    Expression<String>? contactEmail,
    Expression<String>? contactPhone,
    Expression<String>? metadata,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (location != null) 'location': location,
      if (organizerId != null) 'organizer_id': organizerId,
      if (status != null) 'status': status,
      if (isActive != null) 'is_active': isActive,
      if (maxAttendees != null) 'max_attendees': maxAttendees,
      if (allowCheckIn != null) 'allow_check_in': allowCheckIn,
      if (requiresApproval != null) 'requires_approval': requiresApproval,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (imageUrl != null) 'image_url': imageUrl,
      if (contactEmail != null) 'contact_email': contactEmail,
      if (contactPhone != null) 'contact_phone': contactPhone,
      if (metadata != null) 'metadata': metadata,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EventsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? description,
      Value<DateTime>? startDate,
      Value<DateTime>? endDate,
      Value<String>? location,
      Value<String>? organizerId,
      Value<String>? status,
      Value<bool>? isActive,
      Value<int>? maxAttendees,
      Value<bool>? allowCheckIn,
      Value<bool>? requiresApproval,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String?>? imageUrl,
      Value<String?>? contactEmail,
      Value<String?>? contactPhone,
      Value<String?>? metadata,
      Value<int>? rowid}) {
    return EventsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      location: location ?? this.location,
      organizerId: organizerId ?? this.organizerId,
      status: status ?? this.status,
      isActive: isActive ?? this.isActive,
      maxAttendees: maxAttendees ?? this.maxAttendees,
      allowCheckIn: allowCheckIn ?? this.allowCheckIn,
      requiresApproval: requiresApproval ?? this.requiresApproval,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      imageUrl: imageUrl ?? this.imageUrl,
      contactEmail: contactEmail ?? this.contactEmail,
      contactPhone: contactPhone ?? this.contactPhone,
      metadata: metadata ?? this.metadata,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (organizerId.present) {
      map['organizer_id'] = Variable<String>(organizerId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (maxAttendees.present) {
      map['max_attendees'] = Variable<int>(maxAttendees.value);
    }
    if (allowCheckIn.present) {
      map['allow_check_in'] = Variable<bool>(allowCheckIn.value);
    }
    if (requiresApproval.present) {
      map['requires_approval'] = Variable<bool>(requiresApproval.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (contactEmail.present) {
      map['contact_email'] = Variable<String>(contactEmail.value);
    }
    if (contactPhone.present) {
      map['contact_phone'] = Variable<String>(contactPhone.value);
    }
    if (metadata.present) {
      map['metadata'] = Variable<String>(metadata.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('location: $location, ')
          ..write('organizerId: $organizerId, ')
          ..write('status: $status, ')
          ..write('isActive: $isActive, ')
          ..write('maxAttendees: $maxAttendees, ')
          ..write('allowCheckIn: $allowCheckIn, ')
          ..write('requiresApproval: $requiresApproval, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('contactEmail: $contactEmail, ')
          ..write('contactPhone: $contactPhone, ')
          ..write('metadata: $metadata, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AttendeesTable extends Attendees
    with TableInfo<$AttendeesTable, AttendeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AttendeesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _eventIdMeta =
      const VerificationMeta('eventId');
  @override
  late final GeneratedColumn<String> eventId = GeneratedColumn<String>(
      'event_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _registrationDateMeta =
      const VerificationMeta('registrationDate');
  @override
  late final GeneratedColumn<DateTime> registrationDate =
      GeneratedColumn<DateTime>('registration_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _ticketTypeMeta =
      const VerificationMeta('ticketType');
  @override
  late final GeneratedColumn<String> ticketType = GeneratedColumn<String>(
      'ticket_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedColumn<String> qrCode = GeneratedColumn<String>(
      'qr_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isVipMeta = const VerificationMeta('isVip');
  @override
  late final GeneratedColumn<bool> isVip = GeneratedColumn<bool>(
      'is_vip', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_vip" IN (0, 1))'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _companyMeta =
      const VerificationMeta('company');
  @override
  late final GeneratedColumn<String> company = GeneratedColumn<String>(
      'company', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _jobTitleMeta =
      const VerificationMeta('jobTitle');
  @override
  late final GeneratedColumn<String> jobTitle = GeneratedColumn<String>(
      'job_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customFieldsMeta =
      const VerificationMeta('customFields');
  @override
  late final GeneratedColumn<String> customFields = GeneratedColumn<String>(
      'custom_fields', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        eventId,
        firstName,
        lastName,
        email,
        status,
        registrationDate,
        ticketType,
        qrCode,
        isVip,
        createdAt,
        updatedAt,
        phone,
        company,
        jobTitle,
        notes,
        customFields
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'attendees';
  @override
  VerificationContext validateIntegrity(Insertable<AttendeeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('event_id')) {
      context.handle(_eventIdMeta,
          eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));
    } else if (isInserting) {
      context.missing(_eventIdMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('registration_date')) {
      context.handle(
          _registrationDateMeta,
          registrationDate.isAcceptableOrUnknown(
              data['registration_date']!, _registrationDateMeta));
    } else if (isInserting) {
      context.missing(_registrationDateMeta);
    }
    if (data.containsKey('ticket_type')) {
      context.handle(
          _ticketTypeMeta,
          ticketType.isAcceptableOrUnknown(
              data['ticket_type']!, _ticketTypeMeta));
    } else if (isInserting) {
      context.missing(_ticketTypeMeta);
    }
    if (data.containsKey('qr_code')) {
      context.handle(_qrCodeMeta,
          qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta));
    } else if (isInserting) {
      context.missing(_qrCodeMeta);
    }
    if (data.containsKey('is_vip')) {
      context.handle(
          _isVipMeta, isVip.isAcceptableOrUnknown(data['is_vip']!, _isVipMeta));
    } else if (isInserting) {
      context.missing(_isVipMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    }
    if (data.containsKey('job_title')) {
      context.handle(_jobTitleMeta,
          jobTitle.isAcceptableOrUnknown(data['job_title']!, _jobTitleMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('custom_fields')) {
      context.handle(
          _customFieldsMeta,
          customFields.isAcceptableOrUnknown(
              data['custom_fields']!, _customFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AttendeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AttendeeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      eventId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}event_id'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      registrationDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}registration_date'])!,
      ticketType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ticket_type'])!,
      qrCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}qr_code'])!,
      isVip: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_vip'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      company: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company']),
      jobTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}job_title']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      customFields: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom_fields']),
    );
  }

  @override
  $AttendeesTable createAlias(String alias) {
    return $AttendeesTable(attachedDatabase, alias);
  }
}

class AttendeeData extends DataClass implements Insertable<AttendeeData> {
  final String id;
  final String eventId;
  final String firstName;
  final String lastName;
  final String email;
  final String status;
  final DateTime registrationDate;
  final String ticketType;
  final String qrCode;
  final bool isVip;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? phone;
  final String? company;
  final String? jobTitle;
  final String? notes;
  final String? customFields;
  const AttendeeData(
      {required this.id,
      required this.eventId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.status,
      required this.registrationDate,
      required this.ticketType,
      required this.qrCode,
      required this.isVip,
      required this.createdAt,
      required this.updatedAt,
      this.phone,
      this.company,
      this.jobTitle,
      this.notes,
      this.customFields});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['event_id'] = Variable<String>(eventId);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['email'] = Variable<String>(email);
    map['status'] = Variable<String>(status);
    map['registration_date'] = Variable<DateTime>(registrationDate);
    map['ticket_type'] = Variable<String>(ticketType);
    map['qr_code'] = Variable<String>(qrCode);
    map['is_vip'] = Variable<bool>(isVip);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || company != null) {
      map['company'] = Variable<String>(company);
    }
    if (!nullToAbsent || jobTitle != null) {
      map['job_title'] = Variable<String>(jobTitle);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || customFields != null) {
      map['custom_fields'] = Variable<String>(customFields);
    }
    return map;
  }

  AttendeesCompanion toCompanion(bool nullToAbsent) {
    return AttendeesCompanion(
      id: Value(id),
      eventId: Value(eventId),
      firstName: Value(firstName),
      lastName: Value(lastName),
      email: Value(email),
      status: Value(status),
      registrationDate: Value(registrationDate),
      ticketType: Value(ticketType),
      qrCode: Value(qrCode),
      isVip: Value(isVip),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      jobTitle: jobTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(jobTitle),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      customFields: customFields == null && nullToAbsent
          ? const Value.absent()
          : Value(customFields),
    );
  }

  factory AttendeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AttendeeData(
      id: serializer.fromJson<String>(json['id']),
      eventId: serializer.fromJson<String>(json['eventId']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      email: serializer.fromJson<String>(json['email']),
      status: serializer.fromJson<String>(json['status']),
      registrationDate: serializer.fromJson<DateTime>(json['registrationDate']),
      ticketType: serializer.fromJson<String>(json['ticketType']),
      qrCode: serializer.fromJson<String>(json['qrCode']),
      isVip: serializer.fromJson<bool>(json['isVip']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      phone: serializer.fromJson<String?>(json['phone']),
      company: serializer.fromJson<String?>(json['company']),
      jobTitle: serializer.fromJson<String?>(json['jobTitle']),
      notes: serializer.fromJson<String?>(json['notes']),
      customFields: serializer.fromJson<String?>(json['customFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'eventId': serializer.toJson<String>(eventId),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'email': serializer.toJson<String>(email),
      'status': serializer.toJson<String>(status),
      'registrationDate': serializer.toJson<DateTime>(registrationDate),
      'ticketType': serializer.toJson<String>(ticketType),
      'qrCode': serializer.toJson<String>(qrCode),
      'isVip': serializer.toJson<bool>(isVip),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'phone': serializer.toJson<String?>(phone),
      'company': serializer.toJson<String?>(company),
      'jobTitle': serializer.toJson<String?>(jobTitle),
      'notes': serializer.toJson<String?>(notes),
      'customFields': serializer.toJson<String?>(customFields),
    };
  }

  AttendeeData copyWith(
          {String? id,
          String? eventId,
          String? firstName,
          String? lastName,
          String? email,
          String? status,
          DateTime? registrationDate,
          String? ticketType,
          String? qrCode,
          bool? isVip,
          DateTime? createdAt,
          DateTime? updatedAt,
          Value<String?> phone = const Value.absent(),
          Value<String?> company = const Value.absent(),
          Value<String?> jobTitle = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> customFields = const Value.absent()}) =>
      AttendeeData(
        id: id ?? this.id,
        eventId: eventId ?? this.eventId,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        status: status ?? this.status,
        registrationDate: registrationDate ?? this.registrationDate,
        ticketType: ticketType ?? this.ticketType,
        qrCode: qrCode ?? this.qrCode,
        isVip: isVip ?? this.isVip,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        phone: phone.present ? phone.value : this.phone,
        company: company.present ? company.value : this.company,
        jobTitle: jobTitle.present ? jobTitle.value : this.jobTitle,
        notes: notes.present ? notes.value : this.notes,
        customFields:
            customFields.present ? customFields.value : this.customFields,
      );
  AttendeeData copyWithCompanion(AttendeesCompanion data) {
    return AttendeeData(
      id: data.id.present ? data.id.value : this.id,
      eventId: data.eventId.present ? data.eventId.value : this.eventId,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      email: data.email.present ? data.email.value : this.email,
      status: data.status.present ? data.status.value : this.status,
      registrationDate: data.registrationDate.present
          ? data.registrationDate.value
          : this.registrationDate,
      ticketType:
          data.ticketType.present ? data.ticketType.value : this.ticketType,
      qrCode: data.qrCode.present ? data.qrCode.value : this.qrCode,
      isVip: data.isVip.present ? data.isVip.value : this.isVip,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      phone: data.phone.present ? data.phone.value : this.phone,
      company: data.company.present ? data.company.value : this.company,
      jobTitle: data.jobTitle.present ? data.jobTitle.value : this.jobTitle,
      notes: data.notes.present ? data.notes.value : this.notes,
      customFields: data.customFields.present
          ? data.customFields.value
          : this.customFields,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AttendeeData(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('status: $status, ')
          ..write('registrationDate: $registrationDate, ')
          ..write('ticketType: $ticketType, ')
          ..write('qrCode: $qrCode, ')
          ..write('isVip: $isVip, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('phone: $phone, ')
          ..write('company: $company, ')
          ..write('jobTitle: $jobTitle, ')
          ..write('notes: $notes, ')
          ..write('customFields: $customFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      eventId,
      firstName,
      lastName,
      email,
      status,
      registrationDate,
      ticketType,
      qrCode,
      isVip,
      createdAt,
      updatedAt,
      phone,
      company,
      jobTitle,
      notes,
      customFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AttendeeData &&
          other.id == this.id &&
          other.eventId == this.eventId &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.status == this.status &&
          other.registrationDate == this.registrationDate &&
          other.ticketType == this.ticketType &&
          other.qrCode == this.qrCode &&
          other.isVip == this.isVip &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.phone == this.phone &&
          other.company == this.company &&
          other.jobTitle == this.jobTitle &&
          other.notes == this.notes &&
          other.customFields == this.customFields);
}

class AttendeesCompanion extends UpdateCompanion<AttendeeData> {
  final Value<String> id;
  final Value<String> eventId;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> email;
  final Value<String> status;
  final Value<DateTime> registrationDate;
  final Value<String> ticketType;
  final Value<String> qrCode;
  final Value<bool> isVip;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String?> phone;
  final Value<String?> company;
  final Value<String?> jobTitle;
  final Value<String?> notes;
  final Value<String?> customFields;
  final Value<int> rowid;
  const AttendeesCompanion({
    this.id = const Value.absent(),
    this.eventId = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.status = const Value.absent(),
    this.registrationDate = const Value.absent(),
    this.ticketType = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.isVip = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.phone = const Value.absent(),
    this.company = const Value.absent(),
    this.jobTitle = const Value.absent(),
    this.notes = const Value.absent(),
    this.customFields = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AttendeesCompanion.insert({
    required String id,
    required String eventId,
    required String firstName,
    required String lastName,
    required String email,
    required String status,
    required DateTime registrationDate,
    required String ticketType,
    required String qrCode,
    required bool isVip,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.phone = const Value.absent(),
    this.company = const Value.absent(),
    this.jobTitle = const Value.absent(),
    this.notes = const Value.absent(),
    this.customFields = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        eventId = Value(eventId),
        firstName = Value(firstName),
        lastName = Value(lastName),
        email = Value(email),
        status = Value(status),
        registrationDate = Value(registrationDate),
        ticketType = Value(ticketType),
        qrCode = Value(qrCode),
        isVip = Value(isVip),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<AttendeeData> custom({
    Expression<String>? id,
    Expression<String>? eventId,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? email,
    Expression<String>? status,
    Expression<DateTime>? registrationDate,
    Expression<String>? ticketType,
    Expression<String>? qrCode,
    Expression<bool>? isVip,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? phone,
    Expression<String>? company,
    Expression<String>? jobTitle,
    Expression<String>? notes,
    Expression<String>? customFields,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eventId != null) 'event_id': eventId,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (status != null) 'status': status,
      if (registrationDate != null) 'registration_date': registrationDate,
      if (ticketType != null) 'ticket_type': ticketType,
      if (qrCode != null) 'qr_code': qrCode,
      if (isVip != null) 'is_vip': isVip,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (phone != null) 'phone': phone,
      if (company != null) 'company': company,
      if (jobTitle != null) 'job_title': jobTitle,
      if (notes != null) 'notes': notes,
      if (customFields != null) 'custom_fields': customFields,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AttendeesCompanion copyWith(
      {Value<String>? id,
      Value<String>? eventId,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String>? email,
      Value<String>? status,
      Value<DateTime>? registrationDate,
      Value<String>? ticketType,
      Value<String>? qrCode,
      Value<bool>? isVip,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String?>? phone,
      Value<String?>? company,
      Value<String?>? jobTitle,
      Value<String?>? notes,
      Value<String?>? customFields,
      Value<int>? rowid}) {
    return AttendeesCompanion(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      status: status ?? this.status,
      registrationDate: registrationDate ?? this.registrationDate,
      ticketType: ticketType ?? this.ticketType,
      qrCode: qrCode ?? this.qrCode,
      isVip: isVip ?? this.isVip,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      phone: phone ?? this.phone,
      company: company ?? this.company,
      jobTitle: jobTitle ?? this.jobTitle,
      notes: notes ?? this.notes,
      customFields: customFields ?? this.customFields,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (eventId.present) {
      map['event_id'] = Variable<String>(eventId.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (registrationDate.present) {
      map['registration_date'] = Variable<DateTime>(registrationDate.value);
    }
    if (ticketType.present) {
      map['ticket_type'] = Variable<String>(ticketType.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (isVip.present) {
      map['is_vip'] = Variable<bool>(isVip.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (company.present) {
      map['company'] = Variable<String>(company.value);
    }
    if (jobTitle.present) {
      map['job_title'] = Variable<String>(jobTitle.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (customFields.present) {
      map['custom_fields'] = Variable<String>(customFields.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AttendeesCompanion(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('status: $status, ')
          ..write('registrationDate: $registrationDate, ')
          ..write('ticketType: $ticketType, ')
          ..write('qrCode: $qrCode, ')
          ..write('isVip: $isVip, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('phone: $phone, ')
          ..write('company: $company, ')
          ..write('jobTitle: $jobTitle, ')
          ..write('notes: $notes, ')
          ..write('customFields: $customFields, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CheckInsTable extends CheckIns
    with TableInfo<$CheckInsTable, CheckInData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CheckInsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _eventIdMeta =
      const VerificationMeta('eventId');
  @override
  late final GeneratedColumn<String> eventId = GeneratedColumn<String>(
      'event_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _attendeeIdMeta =
      const VerificationMeta('attendeeId');
  @override
  late final GeneratedColumn<String> attendeeId = GeneratedColumn<String>(
      'attendee_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _checkInTimeMeta =
      const VerificationMeta('checkInTime');
  @override
  late final GeneratedColumn<DateTime> checkInTime = GeneratedColumn<DateTime>(
      'check_in_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _methodMeta = const VerificationMeta('method');
  @override
  late final GeneratedColumn<String> method = GeneratedColumn<String>(
      'method', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _operatorIdMeta =
      const VerificationMeta('operatorId');
  @override
  late final GeneratedColumn<String> operatorId = GeneratedColumn<String>(
      'operator_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _metadataMeta =
      const VerificationMeta('metadata');
  @override
  late final GeneratedColumn<String> metadata = GeneratedColumn<String>(
      'metadata', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        eventId,
        attendeeId,
        checkInTime,
        method,
        status,
        deviceId,
        operatorId,
        createdAt,
        notes,
        metadata
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'check_ins';
  @override
  VerificationContext validateIntegrity(Insertable<CheckInData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('event_id')) {
      context.handle(_eventIdMeta,
          eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));
    } else if (isInserting) {
      context.missing(_eventIdMeta);
    }
    if (data.containsKey('attendee_id')) {
      context.handle(
          _attendeeIdMeta,
          attendeeId.isAcceptableOrUnknown(
              data['attendee_id']!, _attendeeIdMeta));
    } else if (isInserting) {
      context.missing(_attendeeIdMeta);
    }
    if (data.containsKey('check_in_time')) {
      context.handle(
          _checkInTimeMeta,
          checkInTime.isAcceptableOrUnknown(
              data['check_in_time']!, _checkInTimeMeta));
    } else if (isInserting) {
      context.missing(_checkInTimeMeta);
    }
    if (data.containsKey('method')) {
      context.handle(_methodMeta,
          method.isAcceptableOrUnknown(data['method']!, _methodMeta));
    } else if (isInserting) {
      context.missing(_methodMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('operator_id')) {
      context.handle(
          _operatorIdMeta,
          operatorId.isAcceptableOrUnknown(
              data['operator_id']!, _operatorIdMeta));
    } else if (isInserting) {
      context.missing(_operatorIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('metadata')) {
      context.handle(_metadataMeta,
          metadata.isAcceptableOrUnknown(data['metadata']!, _metadataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CheckInData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CheckInData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      eventId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}event_id'])!,
      attendeeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attendee_id'])!,
      checkInTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}check_in_time'])!,
      method: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}method'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id'])!,
      operatorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operator_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      metadata: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}metadata']),
    );
  }

  @override
  $CheckInsTable createAlias(String alias) {
    return $CheckInsTable(attachedDatabase, alias);
  }
}

class CheckInData extends DataClass implements Insertable<CheckInData> {
  final String id;
  final String eventId;
  final String attendeeId;
  final DateTime checkInTime;
  final String method;
  final String status;
  final String deviceId;
  final String operatorId;
  final DateTime createdAt;
  final String? notes;
  final String? metadata;
  const CheckInData(
      {required this.id,
      required this.eventId,
      required this.attendeeId,
      required this.checkInTime,
      required this.method,
      required this.status,
      required this.deviceId,
      required this.operatorId,
      required this.createdAt,
      this.notes,
      this.metadata});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['event_id'] = Variable<String>(eventId);
    map['attendee_id'] = Variable<String>(attendeeId);
    map['check_in_time'] = Variable<DateTime>(checkInTime);
    map['method'] = Variable<String>(method);
    map['status'] = Variable<String>(status);
    map['device_id'] = Variable<String>(deviceId);
    map['operator_id'] = Variable<String>(operatorId);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || metadata != null) {
      map['metadata'] = Variable<String>(metadata);
    }
    return map;
  }

  CheckInsCompanion toCompanion(bool nullToAbsent) {
    return CheckInsCompanion(
      id: Value(id),
      eventId: Value(eventId),
      attendeeId: Value(attendeeId),
      checkInTime: Value(checkInTime),
      method: Value(method),
      status: Value(status),
      deviceId: Value(deviceId),
      operatorId: Value(operatorId),
      createdAt: Value(createdAt),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      metadata: metadata == null && nullToAbsent
          ? const Value.absent()
          : Value(metadata),
    );
  }

  factory CheckInData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CheckInData(
      id: serializer.fromJson<String>(json['id']),
      eventId: serializer.fromJson<String>(json['eventId']),
      attendeeId: serializer.fromJson<String>(json['attendeeId']),
      checkInTime: serializer.fromJson<DateTime>(json['checkInTime']),
      method: serializer.fromJson<String>(json['method']),
      status: serializer.fromJson<String>(json['status']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      operatorId: serializer.fromJson<String>(json['operatorId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      notes: serializer.fromJson<String?>(json['notes']),
      metadata: serializer.fromJson<String?>(json['metadata']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'eventId': serializer.toJson<String>(eventId),
      'attendeeId': serializer.toJson<String>(attendeeId),
      'checkInTime': serializer.toJson<DateTime>(checkInTime),
      'method': serializer.toJson<String>(method),
      'status': serializer.toJson<String>(status),
      'deviceId': serializer.toJson<String>(deviceId),
      'operatorId': serializer.toJson<String>(operatorId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'notes': serializer.toJson<String?>(notes),
      'metadata': serializer.toJson<String?>(metadata),
    };
  }

  CheckInData copyWith(
          {String? id,
          String? eventId,
          String? attendeeId,
          DateTime? checkInTime,
          String? method,
          String? status,
          String? deviceId,
          String? operatorId,
          DateTime? createdAt,
          Value<String?> notes = const Value.absent(),
          Value<String?> metadata = const Value.absent()}) =>
      CheckInData(
        id: id ?? this.id,
        eventId: eventId ?? this.eventId,
        attendeeId: attendeeId ?? this.attendeeId,
        checkInTime: checkInTime ?? this.checkInTime,
        method: method ?? this.method,
        status: status ?? this.status,
        deviceId: deviceId ?? this.deviceId,
        operatorId: operatorId ?? this.operatorId,
        createdAt: createdAt ?? this.createdAt,
        notes: notes.present ? notes.value : this.notes,
        metadata: metadata.present ? metadata.value : this.metadata,
      );
  CheckInData copyWithCompanion(CheckInsCompanion data) {
    return CheckInData(
      id: data.id.present ? data.id.value : this.id,
      eventId: data.eventId.present ? data.eventId.value : this.eventId,
      attendeeId:
          data.attendeeId.present ? data.attendeeId.value : this.attendeeId,
      checkInTime:
          data.checkInTime.present ? data.checkInTime.value : this.checkInTime,
      method: data.method.present ? data.method.value : this.method,
      status: data.status.present ? data.status.value : this.status,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
      operatorId:
          data.operatorId.present ? data.operatorId.value : this.operatorId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      notes: data.notes.present ? data.notes.value : this.notes,
      metadata: data.metadata.present ? data.metadata.value : this.metadata,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CheckInData(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('attendeeId: $attendeeId, ')
          ..write('checkInTime: $checkInTime, ')
          ..write('method: $method, ')
          ..write('status: $status, ')
          ..write('deviceId: $deviceId, ')
          ..write('operatorId: $operatorId, ')
          ..write('createdAt: $createdAt, ')
          ..write('notes: $notes, ')
          ..write('metadata: $metadata')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, eventId, attendeeId, checkInTime, method,
      status, deviceId, operatorId, createdAt, notes, metadata);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CheckInData &&
          other.id == this.id &&
          other.eventId == this.eventId &&
          other.attendeeId == this.attendeeId &&
          other.checkInTime == this.checkInTime &&
          other.method == this.method &&
          other.status == this.status &&
          other.deviceId == this.deviceId &&
          other.operatorId == this.operatorId &&
          other.createdAt == this.createdAt &&
          other.notes == this.notes &&
          other.metadata == this.metadata);
}

class CheckInsCompanion extends UpdateCompanion<CheckInData> {
  final Value<String> id;
  final Value<String> eventId;
  final Value<String> attendeeId;
  final Value<DateTime> checkInTime;
  final Value<String> method;
  final Value<String> status;
  final Value<String> deviceId;
  final Value<String> operatorId;
  final Value<DateTime> createdAt;
  final Value<String?> notes;
  final Value<String?> metadata;
  final Value<int> rowid;
  const CheckInsCompanion({
    this.id = const Value.absent(),
    this.eventId = const Value.absent(),
    this.attendeeId = const Value.absent(),
    this.checkInTime = const Value.absent(),
    this.method = const Value.absent(),
    this.status = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.operatorId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.notes = const Value.absent(),
    this.metadata = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CheckInsCompanion.insert({
    required String id,
    required String eventId,
    required String attendeeId,
    required DateTime checkInTime,
    required String method,
    required String status,
    required String deviceId,
    required String operatorId,
    required DateTime createdAt,
    this.notes = const Value.absent(),
    this.metadata = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        eventId = Value(eventId),
        attendeeId = Value(attendeeId),
        checkInTime = Value(checkInTime),
        method = Value(method),
        status = Value(status),
        deviceId = Value(deviceId),
        operatorId = Value(operatorId),
        createdAt = Value(createdAt);
  static Insertable<CheckInData> custom({
    Expression<String>? id,
    Expression<String>? eventId,
    Expression<String>? attendeeId,
    Expression<DateTime>? checkInTime,
    Expression<String>? method,
    Expression<String>? status,
    Expression<String>? deviceId,
    Expression<String>? operatorId,
    Expression<DateTime>? createdAt,
    Expression<String>? notes,
    Expression<String>? metadata,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eventId != null) 'event_id': eventId,
      if (attendeeId != null) 'attendee_id': attendeeId,
      if (checkInTime != null) 'check_in_time': checkInTime,
      if (method != null) 'method': method,
      if (status != null) 'status': status,
      if (deviceId != null) 'device_id': deviceId,
      if (operatorId != null) 'operator_id': operatorId,
      if (createdAt != null) 'created_at': createdAt,
      if (notes != null) 'notes': notes,
      if (metadata != null) 'metadata': metadata,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CheckInsCompanion copyWith(
      {Value<String>? id,
      Value<String>? eventId,
      Value<String>? attendeeId,
      Value<DateTime>? checkInTime,
      Value<String>? method,
      Value<String>? status,
      Value<String>? deviceId,
      Value<String>? operatorId,
      Value<DateTime>? createdAt,
      Value<String?>? notes,
      Value<String?>? metadata,
      Value<int>? rowid}) {
    return CheckInsCompanion(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      attendeeId: attendeeId ?? this.attendeeId,
      checkInTime: checkInTime ?? this.checkInTime,
      method: method ?? this.method,
      status: status ?? this.status,
      deviceId: deviceId ?? this.deviceId,
      operatorId: operatorId ?? this.operatorId,
      createdAt: createdAt ?? this.createdAt,
      notes: notes ?? this.notes,
      metadata: metadata ?? this.metadata,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (eventId.present) {
      map['event_id'] = Variable<String>(eventId.value);
    }
    if (attendeeId.present) {
      map['attendee_id'] = Variable<String>(attendeeId.value);
    }
    if (checkInTime.present) {
      map['check_in_time'] = Variable<DateTime>(checkInTime.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(method.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (operatorId.present) {
      map['operator_id'] = Variable<String>(operatorId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (metadata.present) {
      map['metadata'] = Variable<String>(metadata.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CheckInsCompanion(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('attendeeId: $attendeeId, ')
          ..write('checkInTime: $checkInTime, ')
          ..write('method: $method, ')
          ..write('status: $status, ')
          ..write('deviceId: $deviceId, ')
          ..write('operatorId: $operatorId, ')
          ..write('createdAt: $createdAt, ')
          ..write('notes: $notes, ')
          ..write('metadata: $metadata, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TicketsTable extends Tickets with TableInfo<$TicketsTable, TicketData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TicketsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _eventIdMeta =
      const VerificationMeta('eventId');
  @override
  late final GeneratedColumn<String> eventId = GeneratedColumn<String>(
      'event_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _soldMeta = const VerificationMeta('sold');
  @override
  late final GeneratedColumn<int> sold = GeneratedColumn<int>(
      'sold', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'));
  static const VerificationMeta _saleStartDateMeta =
      const VerificationMeta('saleStartDate');
  @override
  late final GeneratedColumn<DateTime> saleStartDate =
      GeneratedColumn<DateTime>('sale_start_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _saleEndDateMeta =
      const VerificationMeta('saleEndDate');
  @override
  late final GeneratedColumn<DateTime> saleEndDate = GeneratedColumn<DateTime>(
      'sale_end_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _metadataMeta =
      const VerificationMeta('metadata');
  @override
  late final GeneratedColumn<String> metadata = GeneratedColumn<String>(
      'metadata', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        eventId,
        name,
        description,
        price,
        quantity,
        sold,
        isActive,
        saleStartDate,
        saleEndDate,
        type,
        createdAt,
        updatedAt,
        color,
        metadata
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tickets';
  @override
  VerificationContext validateIntegrity(Insertable<TicketData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('event_id')) {
      context.handle(_eventIdMeta,
          eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));
    } else if (isInserting) {
      context.missing(_eventIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('sold')) {
      context.handle(
          _soldMeta, sold.isAcceptableOrUnknown(data['sold']!, _soldMeta));
    } else if (isInserting) {
      context.missing(_soldMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('sale_start_date')) {
      context.handle(
          _saleStartDateMeta,
          saleStartDate.isAcceptableOrUnknown(
              data['sale_start_date']!, _saleStartDateMeta));
    } else if (isInserting) {
      context.missing(_saleStartDateMeta);
    }
    if (data.containsKey('sale_end_date')) {
      context.handle(
          _saleEndDateMeta,
          saleEndDate.isAcceptableOrUnknown(
              data['sale_end_date']!, _saleEndDateMeta));
    } else if (isInserting) {
      context.missing(_saleEndDateMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('metadata')) {
      context.handle(_metadataMeta,
          metadata.isAcceptableOrUnknown(data['metadata']!, _metadataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TicketData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TicketData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      eventId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}event_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      sold: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sold'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      saleStartDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}sale_start_date'])!,
      saleEndDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}sale_end_date'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
      metadata: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}metadata']),
    );
  }

  @override
  $TicketsTable createAlias(String alias) {
    return $TicketsTable(attachedDatabase, alias);
  }
}

class TicketData extends DataClass implements Insertable<TicketData> {
  final String id;
  final String eventId;
  final String name;
  final String description;
  final double price;
  final int quantity;
  final int sold;
  final bool isActive;
  final DateTime saleStartDate;
  final DateTime saleEndDate;
  final String type;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? color;
  final String? metadata;
  const TicketData(
      {required this.id,
      required this.eventId,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.sold,
      required this.isActive,
      required this.saleStartDate,
      required this.saleEndDate,
      required this.type,
      required this.createdAt,
      required this.updatedAt,
      this.color,
      this.metadata});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['event_id'] = Variable<String>(eventId);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['price'] = Variable<double>(price);
    map['quantity'] = Variable<int>(quantity);
    map['sold'] = Variable<int>(sold);
    map['is_active'] = Variable<bool>(isActive);
    map['sale_start_date'] = Variable<DateTime>(saleStartDate);
    map['sale_end_date'] = Variable<DateTime>(saleEndDate);
    map['type'] = Variable<String>(type);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || metadata != null) {
      map['metadata'] = Variable<String>(metadata);
    }
    return map;
  }

  TicketsCompanion toCompanion(bool nullToAbsent) {
    return TicketsCompanion(
      id: Value(id),
      eventId: Value(eventId),
      name: Value(name),
      description: Value(description),
      price: Value(price),
      quantity: Value(quantity),
      sold: Value(sold),
      isActive: Value(isActive),
      saleStartDate: Value(saleStartDate),
      saleEndDate: Value(saleEndDate),
      type: Value(type),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      metadata: metadata == null && nullToAbsent
          ? const Value.absent()
          : Value(metadata),
    );
  }

  factory TicketData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TicketData(
      id: serializer.fromJson<String>(json['id']),
      eventId: serializer.fromJson<String>(json['eventId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      price: serializer.fromJson<double>(json['price']),
      quantity: serializer.fromJson<int>(json['quantity']),
      sold: serializer.fromJson<int>(json['sold']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      saleStartDate: serializer.fromJson<DateTime>(json['saleStartDate']),
      saleEndDate: serializer.fromJson<DateTime>(json['saleEndDate']),
      type: serializer.fromJson<String>(json['type']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      color: serializer.fromJson<String?>(json['color']),
      metadata: serializer.fromJson<String?>(json['metadata']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'eventId': serializer.toJson<String>(eventId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'price': serializer.toJson<double>(price),
      'quantity': serializer.toJson<int>(quantity),
      'sold': serializer.toJson<int>(sold),
      'isActive': serializer.toJson<bool>(isActive),
      'saleStartDate': serializer.toJson<DateTime>(saleStartDate),
      'saleEndDate': serializer.toJson<DateTime>(saleEndDate),
      'type': serializer.toJson<String>(type),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'color': serializer.toJson<String?>(color),
      'metadata': serializer.toJson<String?>(metadata),
    };
  }

  TicketData copyWith(
          {String? id,
          String? eventId,
          String? name,
          String? description,
          double? price,
          int? quantity,
          int? sold,
          bool? isActive,
          DateTime? saleStartDate,
          DateTime? saleEndDate,
          String? type,
          DateTime? createdAt,
          DateTime? updatedAt,
          Value<String?> color = const Value.absent(),
          Value<String?> metadata = const Value.absent()}) =>
      TicketData(
        id: id ?? this.id,
        eventId: eventId ?? this.eventId,
        name: name ?? this.name,
        description: description ?? this.description,
        price: price ?? this.price,
        quantity: quantity ?? this.quantity,
        sold: sold ?? this.sold,
        isActive: isActive ?? this.isActive,
        saleStartDate: saleStartDate ?? this.saleStartDate,
        saleEndDate: saleEndDate ?? this.saleEndDate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        color: color.present ? color.value : this.color,
        metadata: metadata.present ? metadata.value : this.metadata,
      );
  TicketData copyWithCompanion(TicketsCompanion data) {
    return TicketData(
      id: data.id.present ? data.id.value : this.id,
      eventId: data.eventId.present ? data.eventId.value : this.eventId,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      price: data.price.present ? data.price.value : this.price,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      sold: data.sold.present ? data.sold.value : this.sold,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      saleStartDate: data.saleStartDate.present
          ? data.saleStartDate.value
          : this.saleStartDate,
      saleEndDate:
          data.saleEndDate.present ? data.saleEndDate.value : this.saleEndDate,
      type: data.type.present ? data.type.value : this.type,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      color: data.color.present ? data.color.value : this.color,
      metadata: data.metadata.present ? data.metadata.value : this.metadata,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TicketData(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('sold: $sold, ')
          ..write('isActive: $isActive, ')
          ..write('saleStartDate: $saleStartDate, ')
          ..write('saleEndDate: $saleEndDate, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('color: $color, ')
          ..write('metadata: $metadata')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      eventId,
      name,
      description,
      price,
      quantity,
      sold,
      isActive,
      saleStartDate,
      saleEndDate,
      type,
      createdAt,
      updatedAt,
      color,
      metadata);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TicketData &&
          other.id == this.id &&
          other.eventId == this.eventId &&
          other.name == this.name &&
          other.description == this.description &&
          other.price == this.price &&
          other.quantity == this.quantity &&
          other.sold == this.sold &&
          other.isActive == this.isActive &&
          other.saleStartDate == this.saleStartDate &&
          other.saleEndDate == this.saleEndDate &&
          other.type == this.type &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.color == this.color &&
          other.metadata == this.metadata);
}

class TicketsCompanion extends UpdateCompanion<TicketData> {
  final Value<String> id;
  final Value<String> eventId;
  final Value<String> name;
  final Value<String> description;
  final Value<double> price;
  final Value<int> quantity;
  final Value<int> sold;
  final Value<bool> isActive;
  final Value<DateTime> saleStartDate;
  final Value<DateTime> saleEndDate;
  final Value<String> type;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String?> color;
  final Value<String?> metadata;
  final Value<int> rowid;
  const TicketsCompanion({
    this.id = const Value.absent(),
    this.eventId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.sold = const Value.absent(),
    this.isActive = const Value.absent(),
    this.saleStartDate = const Value.absent(),
    this.saleEndDate = const Value.absent(),
    this.type = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.color = const Value.absent(),
    this.metadata = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TicketsCompanion.insert({
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
    required String type,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.color = const Value.absent(),
    this.metadata = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        eventId = Value(eventId),
        name = Value(name),
        description = Value(description),
        price = Value(price),
        quantity = Value(quantity),
        sold = Value(sold),
        isActive = Value(isActive),
        saleStartDate = Value(saleStartDate),
        saleEndDate = Value(saleEndDate),
        type = Value(type),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<TicketData> custom({
    Expression<String>? id,
    Expression<String>? eventId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<double>? price,
    Expression<int>? quantity,
    Expression<int>? sold,
    Expression<bool>? isActive,
    Expression<DateTime>? saleStartDate,
    Expression<DateTime>? saleEndDate,
    Expression<String>? type,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? color,
    Expression<String>? metadata,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eventId != null) 'event_id': eventId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (quantity != null) 'quantity': quantity,
      if (sold != null) 'sold': sold,
      if (isActive != null) 'is_active': isActive,
      if (saleStartDate != null) 'sale_start_date': saleStartDate,
      if (saleEndDate != null) 'sale_end_date': saleEndDate,
      if (type != null) 'type': type,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (color != null) 'color': color,
      if (metadata != null) 'metadata': metadata,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TicketsCompanion copyWith(
      {Value<String>? id,
      Value<String>? eventId,
      Value<String>? name,
      Value<String>? description,
      Value<double>? price,
      Value<int>? quantity,
      Value<int>? sold,
      Value<bool>? isActive,
      Value<DateTime>? saleStartDate,
      Value<DateTime>? saleEndDate,
      Value<String>? type,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String?>? color,
      Value<String?>? metadata,
      Value<int>? rowid}) {
    return TicketsCompanion(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      sold: sold ?? this.sold,
      isActive: isActive ?? this.isActive,
      saleStartDate: saleStartDate ?? this.saleStartDate,
      saleEndDate: saleEndDate ?? this.saleEndDate,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      color: color ?? this.color,
      metadata: metadata ?? this.metadata,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (eventId.present) {
      map['event_id'] = Variable<String>(eventId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (sold.present) {
      map['sold'] = Variable<int>(sold.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (saleStartDate.present) {
      map['sale_start_date'] = Variable<DateTime>(saleStartDate.value);
    }
    if (saleEndDate.present) {
      map['sale_end_date'] = Variable<DateTime>(saleEndDate.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (metadata.present) {
      map['metadata'] = Variable<String>(metadata.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TicketsCompanion(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('sold: $sold, ')
          ..write('isActive: $isActive, ')
          ..write('saleStartDate: $saleStartDate, ')
          ..write('saleEndDate: $saleEndDate, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('color: $color, ')
          ..write('metadata: $metadata, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $EventsTable events = $EventsTable(this);
  late final $AttendeesTable attendees = $AttendeesTable(this);
  late final $CheckInsTable checkIns = $CheckInsTable(this);
  late final $TicketsTable tickets = $TicketsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [events, attendees, checkIns, tickets];
}

typedef $$EventsTableCreateCompanionBuilder = EventsCompanion Function({
  required String id,
  required String name,
  required String description,
  required DateTime startDate,
  required DateTime endDate,
  required String location,
  required String organizerId,
  required String status,
  required bool isActive,
  required int maxAttendees,
  required bool allowCheckIn,
  required bool requiresApproval,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<String?> imageUrl,
  Value<String?> contactEmail,
  Value<String?> contactPhone,
  Value<String?> metadata,
  Value<int> rowid,
});
typedef $$EventsTableUpdateCompanionBuilder = EventsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> description,
  Value<DateTime> startDate,
  Value<DateTime> endDate,
  Value<String> location,
  Value<String> organizerId,
  Value<String> status,
  Value<bool> isActive,
  Value<int> maxAttendees,
  Value<bool> allowCheckIn,
  Value<bool> requiresApproval,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String?> imageUrl,
  Value<String?> contactEmail,
  Value<String?> contactPhone,
  Value<String?> metadata,
  Value<int> rowid,
});

class $$EventsTableFilterComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get organizerId => $composableBuilder(
      column: $table.organizerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxAttendees => $composableBuilder(
      column: $table.maxAttendees, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get allowCheckIn => $composableBuilder(
      column: $table.allowCheckIn, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get requiresApproval => $composableBuilder(
      column: $table.requiresApproval,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactEmail => $composableBuilder(
      column: $table.contactEmail, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactPhone => $composableBuilder(
      column: $table.contactPhone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get metadata => $composableBuilder(
      column: $table.metadata, builder: (column) => ColumnFilters(column));
}

class $$EventsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get organizerId => $composableBuilder(
      column: $table.organizerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxAttendees => $composableBuilder(
      column: $table.maxAttendees,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get allowCheckIn => $composableBuilder(
      column: $table.allowCheckIn,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get requiresApproval => $composableBuilder(
      column: $table.requiresApproval,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactEmail => $composableBuilder(
      column: $table.contactEmail,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactPhone => $composableBuilder(
      column: $table.contactPhone,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get metadata => $composableBuilder(
      column: $table.metadata, builder: (column) => ColumnOrderings(column));
}

class $$EventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get organizerId => $composableBuilder(
      column: $table.organizerId, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get maxAttendees => $composableBuilder(
      column: $table.maxAttendees, builder: (column) => column);

  GeneratedColumn<bool> get allowCheckIn => $composableBuilder(
      column: $table.allowCheckIn, builder: (column) => column);

  GeneratedColumn<bool> get requiresApproval => $composableBuilder(
      column: $table.requiresApproval, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get contactEmail => $composableBuilder(
      column: $table.contactEmail, builder: (column) => column);

  GeneratedColumn<String> get contactPhone => $composableBuilder(
      column: $table.contactPhone, builder: (column) => column);

  GeneratedColumn<String> get metadata =>
      $composableBuilder(column: $table.metadata, builder: (column) => column);
}

class $$EventsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EventsTable,
    EventData,
    $$EventsTableFilterComposer,
    $$EventsTableOrderingComposer,
    $$EventsTableAnnotationComposer,
    $$EventsTableCreateCompanionBuilder,
    $$EventsTableUpdateCompanionBuilder,
    (EventData, BaseReferences<_$AppDatabase, $EventsTable, EventData>),
    EventData,
    PrefetchHooks Function()> {
  $$EventsTableTableManager(_$AppDatabase db, $EventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<DateTime> startDate = const Value.absent(),
            Value<DateTime> endDate = const Value.absent(),
            Value<String> location = const Value.absent(),
            Value<String> organizerId = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<int> maxAttendees = const Value.absent(),
            Value<bool> allowCheckIn = const Value.absent(),
            Value<bool> requiresApproval = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> contactEmail = const Value.absent(),
            Value<String?> contactPhone = const Value.absent(),
            Value<String?> metadata = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EventsCompanion(
            id: id,
            name: name,
            description: description,
            startDate: startDate,
            endDate: endDate,
            location: location,
            organizerId: organizerId,
            status: status,
            isActive: isActive,
            maxAttendees: maxAttendees,
            allowCheckIn: allowCheckIn,
            requiresApproval: requiresApproval,
            createdAt: createdAt,
            updatedAt: updatedAt,
            imageUrl: imageUrl,
            contactEmail: contactEmail,
            contactPhone: contactPhone,
            metadata: metadata,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String description,
            required DateTime startDate,
            required DateTime endDate,
            required String location,
            required String organizerId,
            required String status,
            required bool isActive,
            required int maxAttendees,
            required bool allowCheckIn,
            required bool requiresApproval,
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> contactEmail = const Value.absent(),
            Value<String?> contactPhone = const Value.absent(),
            Value<String?> metadata = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EventsCompanion.insert(
            id: id,
            name: name,
            description: description,
            startDate: startDate,
            endDate: endDate,
            location: location,
            organizerId: organizerId,
            status: status,
            isActive: isActive,
            maxAttendees: maxAttendees,
            allowCheckIn: allowCheckIn,
            requiresApproval: requiresApproval,
            createdAt: createdAt,
            updatedAt: updatedAt,
            imageUrl: imageUrl,
            contactEmail: contactEmail,
            contactPhone: contactPhone,
            metadata: metadata,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EventsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EventsTable,
    EventData,
    $$EventsTableFilterComposer,
    $$EventsTableOrderingComposer,
    $$EventsTableAnnotationComposer,
    $$EventsTableCreateCompanionBuilder,
    $$EventsTableUpdateCompanionBuilder,
    (EventData, BaseReferences<_$AppDatabase, $EventsTable, EventData>),
    EventData,
    PrefetchHooks Function()>;
typedef $$AttendeesTableCreateCompanionBuilder = AttendeesCompanion Function({
  required String id,
  required String eventId,
  required String firstName,
  required String lastName,
  required String email,
  required String status,
  required DateTime registrationDate,
  required String ticketType,
  required String qrCode,
  required bool isVip,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<String?> phone,
  Value<String?> company,
  Value<String?> jobTitle,
  Value<String?> notes,
  Value<String?> customFields,
  Value<int> rowid,
});
typedef $$AttendeesTableUpdateCompanionBuilder = AttendeesCompanion Function({
  Value<String> id,
  Value<String> eventId,
  Value<String> firstName,
  Value<String> lastName,
  Value<String> email,
  Value<String> status,
  Value<DateTime> registrationDate,
  Value<String> ticketType,
  Value<String> qrCode,
  Value<bool> isVip,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String?> phone,
  Value<String?> company,
  Value<String?> jobTitle,
  Value<String?> notes,
  Value<String?> customFields,
  Value<int> rowid,
});

class $$AttendeesTableFilterComposer
    extends Composer<_$AppDatabase, $AttendeesTable> {
  $$AttendeesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ticketType => $composableBuilder(
      column: $table.ticketType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get qrCode => $composableBuilder(
      column: $table.qrCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isVip => $composableBuilder(
      column: $table.isVip, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get company => $composableBuilder(
      column: $table.company, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get jobTitle => $composableBuilder(
      column: $table.jobTitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customFields => $composableBuilder(
      column: $table.customFields, builder: (column) => ColumnFilters(column));
}

class $$AttendeesTableOrderingComposer
    extends Composer<_$AppDatabase, $AttendeesTable> {
  $$AttendeesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ticketType => $composableBuilder(
      column: $table.ticketType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get qrCode => $composableBuilder(
      column: $table.qrCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isVip => $composableBuilder(
      column: $table.isVip, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get company => $composableBuilder(
      column: $table.company, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get jobTitle => $composableBuilder(
      column: $table.jobTitle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customFields => $composableBuilder(
      column: $table.customFields,
      builder: (column) => ColumnOrderings(column));
}

class $$AttendeesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AttendeesTable> {
  $$AttendeesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get eventId =>
      $composableBuilder(column: $table.eventId, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get registrationDate => $composableBuilder(
      column: $table.registrationDate, builder: (column) => column);

  GeneratedColumn<String> get ticketType => $composableBuilder(
      column: $table.ticketType, builder: (column) => column);

  GeneratedColumn<String> get qrCode =>
      $composableBuilder(column: $table.qrCode, builder: (column) => column);

  GeneratedColumn<bool> get isVip =>
      $composableBuilder(column: $table.isVip, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get company =>
      $composableBuilder(column: $table.company, builder: (column) => column);

  GeneratedColumn<String> get jobTitle =>
      $composableBuilder(column: $table.jobTitle, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get customFields => $composableBuilder(
      column: $table.customFields, builder: (column) => column);
}

class $$AttendeesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AttendeesTable,
    AttendeeData,
    $$AttendeesTableFilterComposer,
    $$AttendeesTableOrderingComposer,
    $$AttendeesTableAnnotationComposer,
    $$AttendeesTableCreateCompanionBuilder,
    $$AttendeesTableUpdateCompanionBuilder,
    (
      AttendeeData,
      BaseReferences<_$AppDatabase, $AttendeesTable, AttendeeData>
    ),
    AttendeeData,
    PrefetchHooks Function()> {
  $$AttendeesTableTableManager(_$AppDatabase db, $AttendeesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AttendeesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AttendeesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AttendeesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> eventId = const Value.absent(),
            Value<String> firstName = const Value.absent(),
            Value<String> lastName = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<DateTime> registrationDate = const Value.absent(),
            Value<String> ticketType = const Value.absent(),
            Value<String> qrCode = const Value.absent(),
            Value<bool> isVip = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> company = const Value.absent(),
            Value<String?> jobTitle = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> customFields = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AttendeesCompanion(
            id: id,
            eventId: eventId,
            firstName: firstName,
            lastName: lastName,
            email: email,
            status: status,
            registrationDate: registrationDate,
            ticketType: ticketType,
            qrCode: qrCode,
            isVip: isVip,
            createdAt: createdAt,
            updatedAt: updatedAt,
            phone: phone,
            company: company,
            jobTitle: jobTitle,
            notes: notes,
            customFields: customFields,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String eventId,
            required String firstName,
            required String lastName,
            required String email,
            required String status,
            required DateTime registrationDate,
            required String ticketType,
            required String qrCode,
            required bool isVip,
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<String?> phone = const Value.absent(),
            Value<String?> company = const Value.absent(),
            Value<String?> jobTitle = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> customFields = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AttendeesCompanion.insert(
            id: id,
            eventId: eventId,
            firstName: firstName,
            lastName: lastName,
            email: email,
            status: status,
            registrationDate: registrationDate,
            ticketType: ticketType,
            qrCode: qrCode,
            isVip: isVip,
            createdAt: createdAt,
            updatedAt: updatedAt,
            phone: phone,
            company: company,
            jobTitle: jobTitle,
            notes: notes,
            customFields: customFields,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AttendeesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AttendeesTable,
    AttendeeData,
    $$AttendeesTableFilterComposer,
    $$AttendeesTableOrderingComposer,
    $$AttendeesTableAnnotationComposer,
    $$AttendeesTableCreateCompanionBuilder,
    $$AttendeesTableUpdateCompanionBuilder,
    (
      AttendeeData,
      BaseReferences<_$AppDatabase, $AttendeesTable, AttendeeData>
    ),
    AttendeeData,
    PrefetchHooks Function()>;
typedef $$CheckInsTableCreateCompanionBuilder = CheckInsCompanion Function({
  required String id,
  required String eventId,
  required String attendeeId,
  required DateTime checkInTime,
  required String method,
  required String status,
  required String deviceId,
  required String operatorId,
  required DateTime createdAt,
  Value<String?> notes,
  Value<String?> metadata,
  Value<int> rowid,
});
typedef $$CheckInsTableUpdateCompanionBuilder = CheckInsCompanion Function({
  Value<String> id,
  Value<String> eventId,
  Value<String> attendeeId,
  Value<DateTime> checkInTime,
  Value<String> method,
  Value<String> status,
  Value<String> deviceId,
  Value<String> operatorId,
  Value<DateTime> createdAt,
  Value<String?> notes,
  Value<String?> metadata,
  Value<int> rowid,
});

class $$CheckInsTableFilterComposer
    extends Composer<_$AppDatabase, $CheckInsTable> {
  $$CheckInsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get attendeeId => $composableBuilder(
      column: $table.attendeeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get checkInTime => $composableBuilder(
      column: $table.checkInTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get deviceId => $composableBuilder(
      column: $table.deviceId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get operatorId => $composableBuilder(
      column: $table.operatorId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get metadata => $composableBuilder(
      column: $table.metadata, builder: (column) => ColumnFilters(column));
}

class $$CheckInsTableOrderingComposer
    extends Composer<_$AppDatabase, $CheckInsTable> {
  $$CheckInsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get attendeeId => $composableBuilder(
      column: $table.attendeeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get checkInTime => $composableBuilder(
      column: $table.checkInTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get deviceId => $composableBuilder(
      column: $table.deviceId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get operatorId => $composableBuilder(
      column: $table.operatorId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get metadata => $composableBuilder(
      column: $table.metadata, builder: (column) => ColumnOrderings(column));
}

class $$CheckInsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CheckInsTable> {
  $$CheckInsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get eventId =>
      $composableBuilder(column: $table.eventId, builder: (column) => column);

  GeneratedColumn<String> get attendeeId => $composableBuilder(
      column: $table.attendeeId, builder: (column) => column);

  GeneratedColumn<DateTime> get checkInTime => $composableBuilder(
      column: $table.checkInTime, builder: (column) => column);

  GeneratedColumn<String> get method =>
      $composableBuilder(column: $table.method, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get deviceId =>
      $composableBuilder(column: $table.deviceId, builder: (column) => column);

  GeneratedColumn<String> get operatorId => $composableBuilder(
      column: $table.operatorId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get metadata =>
      $composableBuilder(column: $table.metadata, builder: (column) => column);
}

class $$CheckInsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CheckInsTable,
    CheckInData,
    $$CheckInsTableFilterComposer,
    $$CheckInsTableOrderingComposer,
    $$CheckInsTableAnnotationComposer,
    $$CheckInsTableCreateCompanionBuilder,
    $$CheckInsTableUpdateCompanionBuilder,
    (CheckInData, BaseReferences<_$AppDatabase, $CheckInsTable, CheckInData>),
    CheckInData,
    PrefetchHooks Function()> {
  $$CheckInsTableTableManager(_$AppDatabase db, $CheckInsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CheckInsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CheckInsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CheckInsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> eventId = const Value.absent(),
            Value<String> attendeeId = const Value.absent(),
            Value<DateTime> checkInTime = const Value.absent(),
            Value<String> method = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> deviceId = const Value.absent(),
            Value<String> operatorId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> metadata = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CheckInsCompanion(
            id: id,
            eventId: eventId,
            attendeeId: attendeeId,
            checkInTime: checkInTime,
            method: method,
            status: status,
            deviceId: deviceId,
            operatorId: operatorId,
            createdAt: createdAt,
            notes: notes,
            metadata: metadata,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String eventId,
            required String attendeeId,
            required DateTime checkInTime,
            required String method,
            required String status,
            required String deviceId,
            required String operatorId,
            required DateTime createdAt,
            Value<String?> notes = const Value.absent(),
            Value<String?> metadata = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CheckInsCompanion.insert(
            id: id,
            eventId: eventId,
            attendeeId: attendeeId,
            checkInTime: checkInTime,
            method: method,
            status: status,
            deviceId: deviceId,
            operatorId: operatorId,
            createdAt: createdAt,
            notes: notes,
            metadata: metadata,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CheckInsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CheckInsTable,
    CheckInData,
    $$CheckInsTableFilterComposer,
    $$CheckInsTableOrderingComposer,
    $$CheckInsTableAnnotationComposer,
    $$CheckInsTableCreateCompanionBuilder,
    $$CheckInsTableUpdateCompanionBuilder,
    (CheckInData, BaseReferences<_$AppDatabase, $CheckInsTable, CheckInData>),
    CheckInData,
    PrefetchHooks Function()>;
typedef $$TicketsTableCreateCompanionBuilder = TicketsCompanion Function({
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
  required String type,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<String?> color,
  Value<String?> metadata,
  Value<int> rowid,
});
typedef $$TicketsTableUpdateCompanionBuilder = TicketsCompanion Function({
  Value<String> id,
  Value<String> eventId,
  Value<String> name,
  Value<String> description,
  Value<double> price,
  Value<int> quantity,
  Value<int> sold,
  Value<bool> isActive,
  Value<DateTime> saleStartDate,
  Value<DateTime> saleEndDate,
  Value<String> type,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String?> color,
  Value<String?> metadata,
  Value<int> rowid,
});

class $$TicketsTableFilterComposer
    extends Composer<_$AppDatabase, $TicketsTable> {
  $$TicketsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sold => $composableBuilder(
      column: $table.sold, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get saleStartDate => $composableBuilder(
      column: $table.saleStartDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get saleEndDate => $composableBuilder(
      column: $table.saleEndDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get metadata => $composableBuilder(
      column: $table.metadata, builder: (column) => ColumnFilters(column));
}

class $$TicketsTableOrderingComposer
    extends Composer<_$AppDatabase, $TicketsTable> {
  $$TicketsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get eventId => $composableBuilder(
      column: $table.eventId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sold => $composableBuilder(
      column: $table.sold, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get saleStartDate => $composableBuilder(
      column: $table.saleStartDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get saleEndDate => $composableBuilder(
      column: $table.saleEndDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get metadata => $composableBuilder(
      column: $table.metadata, builder: (column) => ColumnOrderings(column));
}

class $$TicketsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TicketsTable> {
  $$TicketsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get eventId =>
      $composableBuilder(column: $table.eventId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<int> get sold =>
      $composableBuilder(column: $table.sold, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get saleStartDate => $composableBuilder(
      column: $table.saleStartDate, builder: (column) => column);

  GeneratedColumn<DateTime> get saleEndDate => $composableBuilder(
      column: $table.saleEndDate, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get metadata =>
      $composableBuilder(column: $table.metadata, builder: (column) => column);
}

class $$TicketsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TicketsTable,
    TicketData,
    $$TicketsTableFilterComposer,
    $$TicketsTableOrderingComposer,
    $$TicketsTableAnnotationComposer,
    $$TicketsTableCreateCompanionBuilder,
    $$TicketsTableUpdateCompanionBuilder,
    (TicketData, BaseReferences<_$AppDatabase, $TicketsTable, TicketData>),
    TicketData,
    PrefetchHooks Function()> {
  $$TicketsTableTableManager(_$AppDatabase db, $TicketsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TicketsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TicketsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TicketsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> eventId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<int> sold = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<DateTime> saleStartDate = const Value.absent(),
            Value<DateTime> saleEndDate = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<String?> metadata = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TicketsCompanion(
            id: id,
            eventId: eventId,
            name: name,
            description: description,
            price: price,
            quantity: quantity,
            sold: sold,
            isActive: isActive,
            saleStartDate: saleStartDate,
            saleEndDate: saleEndDate,
            type: type,
            createdAt: createdAt,
            updatedAt: updatedAt,
            color: color,
            metadata: metadata,
            rowid: rowid,
          ),
          createCompanionCallback: ({
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
            required String type,
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<String?> color = const Value.absent(),
            Value<String?> metadata = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TicketsCompanion.insert(
            id: id,
            eventId: eventId,
            name: name,
            description: description,
            price: price,
            quantity: quantity,
            sold: sold,
            isActive: isActive,
            saleStartDate: saleStartDate,
            saleEndDate: saleEndDate,
            type: type,
            createdAt: createdAt,
            updatedAt: updatedAt,
            color: color,
            metadata: metadata,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TicketsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TicketsTable,
    TicketData,
    $$TicketsTableFilterComposer,
    $$TicketsTableOrderingComposer,
    $$TicketsTableAnnotationComposer,
    $$TicketsTableCreateCompanionBuilder,
    $$TicketsTableUpdateCompanionBuilder,
    (TicketData, BaseReferences<_$AppDatabase, $TicketsTable, TicketData>),
    TicketData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$EventsTableTableManager get events =>
      $$EventsTableTableManager(_db, _db.events);
  $$AttendeesTableTableManager get attendees =>
      $$AttendeesTableTableManager(_db, _db.attendees);
  $$CheckInsTableTableManager get checkIns =>
      $$CheckInsTableTableManager(_db, _db.checkIns);
  $$TicketsTableTableManager get tickets =>
      $$TicketsTableTableManager(_db, _db.tickets);
}
