// Состояние, температура, влажность и т.д.
class StateUi {
  // id инстанса чтобы отличать если несколько Состояний в устройстве
  String idOwn;
  // id устройства которому принадлежит Состояние
  String idDevice;
  // id для отображения на экране (скин), может быть несколько отображений
  int idUi;
  // входящее состояние из устройства
  double toUiState = 35.0;
  // Название Состояния для отображения на экране пользователю
  String name = '';
  // отображать ли Состояние в данный момент - для того чтобы отключить устройство если сбоит,
  // или активировать удаленно.
  // Или организация монетизации.
  int isActive = 1;
  // Тип регулируемого значения
  String unit = '%';

  StateUi({
    required this.idOwn,
    required this.idDevice,
    this.idUi = 0,
  }) ;

  void printReport() {
    print('inputState -> $toUiState \r\n '
        'outputState -> $name \r\n '
        'id -> $idOwn \r\n ');
  }

}