import 'dart:io';

import 'package:absensi_nanang/common_widgets/my_buttons.dart';
import 'package:absensi_nanang/common_widgets/my_fonts.dart';
import 'package:absensi_nanang/utils/size_utils.dart';
import 'package:absensi_nanang/utils/space_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker(
      {Key? key,
      required this.onImageSelected,
      this.initialImage,
      this.imageRatio,
      this.isFromProductUpdate = false})
      : super(key: key);

  final Function(XFile xFile) onImageSelected;
  final String? initialImage;
  final double? imageRatio;
  final bool isFromProductUpdate;

  @override
  State<MyImagePicker> createState() => _WidgetImagePickerState();
}

class _WidgetImagePickerState extends State<MyImagePicker> {
  final ImagePicker _picker = ImagePicker();

  var widgetImage;
  double? imageRatio;

  @override
  void initState() {
    var isInitialImgExist = widget.initialImage != null;
    if (widget.imageRatio == null) {
      imageRatio = IMAGE_RATIO_RECT;
    } else {
      imageRatio = widget.imageRatio;
    }

    widgetImage = initWidgetImage(isInitialImgExist);
    super.initState();
  }

  /**
   * Algo toggle saved image and local image
   * 1. cek apakah ada gambar dari network
   * jika tidak ada maka local,
   * jika ada pakai Image.file
   * 
   * 2. saat ganti gambar, gambar berubah jadi local image
   */
  initWidgetImage(bool isInitialImgExist) {
    Widget mWidget;

    if (isInitialImgExist) {
      mWidget = Image.file(File(widget.initialImage!), fit: BoxFit.cover);
    } else {
      mWidget = Container(
        color: Colors.grey[200],
        child: Icon(
          Icons.broken_image,
          color: Colors.grey[400],
        ),
      );
    }

    return mWidget;
  }

  changeToLocalImage(XFile? imageFile) {
    var mWidget = imageFile == null
        ? Container(
            color: Colors.grey[200],
            child: Icon(
              Icons.broken_image,
              color: Colors.grey[400],
            ),
          )
        : Image.file(
            File(imageFile.path),
            fit: BoxFit.cover,
          );

    return mWidget;
  }
  /**
   * END ALGO TOGGLE SAVED IMG AND LOCAL IMAGE
   */

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          // color: Colors.grey[200],
          child: AspectRatio(
            aspectRatio: imageRatio!,
            child: widgetImage,
          ),
        ),
        spaceBig(),
        TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: MyFontSubtitle(
                          text: 'Ambil Gambar',
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: MyButtonPrimary(
                                  onPressed: () async {
                                    final XFile? image = await _picker
                                        .pickImage(source: ImageSource.camera);

                                    await processIfExist(image);
                                  },
                                  title: 'Foto'),
                            )
                          ],
                        ),
                      ));
            },
            child: MyFontButton(text: 'Ubah Foto', bold: true))
      ],
    );
  }

  Future<void> processIfExist(XFile? image) async {
    if (image != null) {
      widget.onImageSelected(image);
      widgetImage = changeToLocalImage(image);

      setState(() {});
    }
  }
}
