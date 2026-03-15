import '../models/dialog_option_model.dart';

class DialogData {
  static const String title = 'Choose an option';

  static const List<DialogOptionModel> options = [
    DialogOptionModel(label: 'Option 1: Proceed'),
    DialogOptionModel(label: 'Option 2: Settings'),
    DialogOptionModel(label: 'Option 3: Cancel'),
  ];
}
