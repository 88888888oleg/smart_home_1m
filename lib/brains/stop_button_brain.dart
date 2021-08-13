// Кнопка стоп наверное правильно импульсная, просто устанавливает 0
class StopButton {
  // id инстанса чтобы отличать если несколько кнопок в устройстве
  String idOwn;
  // id устройства которому принадлежит кнопка
  String idDevice;
  // id для отображения на экране (скин), может быть несколько отображений
  int idUi;
  // Название кнопки для отображения на экране пользователю
  String name = '';
  // отображать ли кнопку в данный момент - для того чтобы отключить устройство если сбоит,
  // или активировать удаленно.
  // Или организация монетизации.
  int isActive = 1;
  // // входящее логическое состояние из устройства 0 выкл 1 вкл
  // int toUiLogicState = 1;
  // входящее логическое состояние из отображения 0 выкл 1 вкл
  int fromUiLogicState = 1;

  StopButton({
    required this.idOwn,
    required this.idDevice,
    this.idUi = 0,
  }) ;
  // стоп
  void stopDevice() {
    fromUiLogicState = 0;
  }

  void printReport() {
    print('inputState -> $name \r\n '
        'outputState -> $fromUiLogicState \r\n '
        'id -> $idOwn \r\n ');
  }

}