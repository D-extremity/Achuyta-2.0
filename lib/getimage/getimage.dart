import 'package:image_picker/image_picker.dart';

XFile? finalImage;
pickImage(ImageSource source) async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: source);
  if (image != null) {
    finalImage = image;
    return await image.readAsBytes();
  }
}
