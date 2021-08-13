class Resources {
  static const List<String> typesList = [
    'Счетчик',
    'Розетка',
    'Термометр',
    'Антипротечка',
    'Освещение',
    'Коммутатор',
    'Ролеты',
  ];
}

class PowerCounter {
  int id;
  String name;
  String type;
  int isFavorite;
  int payloadInt;
  String payloadString;
  int output;
  int voltage;
  int current;
  int powerTotal;
  int powerNow;

  PowerCounter({
    this.isFavorite = 0,
    required this.id,
    required this.name,
    this.type = 'Счетчик',
    this.payloadInt = 0,
    this.payloadString = '',
    this.output = 0,
    this.voltage = 0,
    this.current = 0,
    this.powerTotal = 0,
    this.powerNow = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'payloadInt': payloadInt,
      'payloadString': payloadString,
      'isFavorite': isFavorite,
    };
  }

  Map<String, dynamic> toMapIsFavorite(int isFav) {
    return {
      'id': id,
      'name': name,
      'type': type,
      'payloadInt': payloadInt,
      'payloadString': payloadString,
      'isFavorite': isFav,
    };
  }

  @override
  String toString() {
    return 'Drugs{id: $id, name: $name, isFavorite: $isFavorite}';
  }
}
