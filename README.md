# m_home

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

Привет. В папке brains модели сущностей, в каждой из них есть описание. Я не уверен что каждая из них должна вести себя именно так,
поправь если что.
В папке widgets отображения существующих моделей, для одной модели может быть несколько отображений
что никак не влияет на взаимодействие. Полем idUi мы можем выбирать скин какой захотим на лету.
Так же полем   int isActive можем включать и выключать отображение сущностей совсем. Например мы задумали
дополнительные кнопки, сделали под них пины, продали устройство, а реализовали уже потом.
Или установили в устройство три датчика, и продали как три разных устройства - с одним, двумя и тремя
датчиками, по разным ценам. Програмно установили откл на 1 2 или 0 датчиков. Вобщем мысль не
нова, сейчас многие так делают. Если устройство засбоило, тоже можно использовать. Или организация монетизации.
Допустим по подписке может быть два регулятора, один грубо, второй точно а бесплатно только один - грубо.
изменив значение мы можем активировать премиум.
ID системы - systemId вынесено в контроллер(временно), но если у нас одно устройство может принадлежать только одной системе
правильней будет установить это поле в сущностях а устройство реализовать как List<entities>. Но это будет видно.
Папки которые тебе нужны -
brains модели сущностей,
widgets отображения существующих моделей,
providers/test_device_provider.dart временный контроллер для демонстрации работоспособности идей.
В остальных демонстрационные файлы. Для перехода к демонстрации работы сущностей выбери меню->TestDeviceScreen
Там где сущности принимают состояние из устройства оно приходит через 10 сек. Умолчания в файлах моделей
(в пвпке brains). Контроллер сует все в лист стартового синглтона. Можно изменять и смотреть результат.

