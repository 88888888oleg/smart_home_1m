// Кнопка импульсная, просто устанавливает 1
import 'dart:async';

class ImpulseButton {
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
  int toUiLogicState = 0;
  // входящее логическое состояние из отображения 0 выкл 1 вкл
  int fromUiLogicState = 0;
  // вемя которое мы передаем в UI, включить свет (на 15 секунд)
  double timeToUiButton = 15.0;
  // вемя которое мы передаем из UI, (например через настройки)
  double timeFromUiButton = 30.0;
  // Тип  значения
  String unit = 'сек';

  ImpulseButton({
    required this.idOwn,
    required this.idDevice,

    this.idUi = 0,
  }) ;
  // Вкл
  void sendInableImpulse(double time) {
    fromUiLogicState = 1;
    timeToUiButton = time;
  }
  void sendDisableImpulse(double time) {
    fromUiLogicState = 0;
    timeToUiButton = time;
  }


  void printReport() {
    print('inputState -> $name \r\n '
        'outputState -> $fromUiLogicState \r\n '
        'id -> $idOwn \r\n ');
  }

}