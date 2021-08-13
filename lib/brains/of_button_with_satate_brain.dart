// Кнопка выключения которая может принимать и передавать состояние
// например если при нажатии есть обратная связь о том насколько
// закрылись жалюзи, кран, ворота и т.д.
class OffButtonWithState {
  // id инстанса чтобы отличать если несколько кнопок в устройстве
  String idOwn;
  // id устройства которому принадлежит кнопка
  String idDevice;
  // id для отображения на экране (скин), может быть несколько отображений
  int idUi;
  // входящее состояние из устройства (может быть задействовано в будущем)
  double toUiState = 25.0;
  // входящее состояние из отображения (может быть задействовано в будущем)
  double fromUiState = 0.0;
  // Название кнопки для отображения на экране пользователю
  String name = '';
  // отображать ли кнопку в данный момент - для того чтобы отключить устройство если сбоит,
  // или активировать удаленно.
  // Или организация монетизации.
  int isActive = 1;
  // Тип регулируемого значения
  String unit = '%';
  // входящее логическое состояние из устройства 0 выкл 1 вкл
  int toUiLogicState = 1;
  // входящее логическое состояние из отображения 0 выкл 1 вкл
  int fromUiLogicState = 0;

  OffButtonWithState({
    required this.idOwn,
    required this.idDevice,
    this.idUi = 0,
  }) ;
  // Вкл
  void putOffDevice() {
    fromUiLogicState = 0;
  }
  // получить удалось или нет
  int getLigicStateDevice() {
    return toUiLogicState;
  }
  void printReport() {
    print('inputState -> $toUiState \r\n '
        'outputState -> $fromUiState \r\n '
        'id -> $idOwn \r\n ');
  }

}