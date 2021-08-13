// Кнопка включения
class OnButton {
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
  // входящее логическое состояние из устройства 0 выкл 1 вкл
  int toUiLogicState = 1;
  // входящее логическое состояние из отображения 0 выкл 1 вкл
  int fromUiLogicState = 0;

  OnButton({
    required this.idOwn,
    required this.idDevice,
    this.idUi = 0,
  }) ;
  // Вкл
   putOnDevice(){
    fromUiLogicState = 1;
  }
  // получить удалось или нет
  int getLigicStateDevice(){
    return toUiLogicState;
  }
  void printReport() {
    print('inputState -> $toUiLogicState \r\n '
        'outputState -> $fromUiLogicState \r\n '
        'id -> $idOwn \r\n ');
  }

}