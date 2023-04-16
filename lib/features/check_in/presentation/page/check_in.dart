import 'package:absensi_nanang/common_widgets/my_buttons.dart';
import 'package:absensi_nanang/common_widgets/my_fonts.dart';
import 'package:absensi_nanang/common_widgets/my_image_picker.dart';
import 'package:absensi_nanang/features/check_in/data/check_in_repos.dart';
import 'package:absensi_nanang/features/check_in/domain/absensi_model.dart';
import 'package:absensi_nanang/features/check_in/presentation/components/ci_map.dart';
import 'package:absensi_nanang/features/check_in/presentation/components/d_checkin_history.dart';
import 'package:absensi_nanang/features/login/data/login_repos.dart';
import 'package:absensi_nanang/features/notification/application/local_notif_permission.dart';
import 'package:absensi_nanang/features/notification/data/notif_services.dart';
import 'package:absensi_nanang/features/notification/presentation/controller/fcm_controller.dart';
import 'package:absensi_nanang/routing/app_router.dart';
import 'package:absensi_nanang/utils/popup_utils.dart';
import 'package:absensi_nanang/utils/prefs_utils.dart';
import 'package:absensi_nanang/utils/size_utils.dart';
import 'package:absensi_nanang/utils/space_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class CheckIn extends StatefulWidget {
  static const NAME = 'Check In';

  const CheckIn({super.key});

  @override
  State<CheckIn> createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  void initState() {
    LocalNotifPermission().isAndroidPermissionGranted();
    FcmController();
    initUi();
    super.initState();
  }

  String hiText = '';
  String username = '';

  initUi() async {
    final loginData = LoginRepos();
    final res = await loginData.getUsername();
    hiText = ', $res';
    username = res;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const String assetPath = 'assets/images';
    XFile? _imageFile;

    return Scaffold(
      appBar: AppBar(title: const Text(CheckIn.NAME), actions: [
        IconButton(
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: DCheckinHistory(username: username),
                ),
              );
            },
            icon: const Icon(Icons.history)),
        IconButton(
            onPressed: () async {
              await PrefsUtils.clear();

              context.replaceRoute(const LoginRoute());
            },
            icon: const Icon(Icons.logout))
      ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(PADDINGSIZE_BODY),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyFontTitle(text: 'Hi$hiText'),
            spaceSmall(),
            const CiMap(),
            spaceSmall(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SPACESIZE_SMALL,
                        vertical: SPACESIZE_SMALL_EXTRA),
                    child: MyImagePicker(
                      key:
                          UniqueKey(), // force refresh widget after user checkin/checkout
                      initialImage: null,
                      imageRatio: IMAGE_RATIO_SQUARE,
                      onImageSelected: (xFile) {
                        _imageFile = xFile;
                        PopupUtils.closeDialog(context);
                      },
                    ),
                  ),
                )
              ],
            ),
            spaceSmall(),
            MyButtonPrimary(
                onPressed: () async {
                  if (_imageFile == null) {
                    Fluttertoast.showToast(msg: 'Foto harus diisi');
                    return;
                  }
                  final checkinData = CheckInRepos();

                  final res = await checkinData.checkIn(
                      username: username, photo: _imageFile!.path);

                  if (res) {
                    _imageFile = null;
                    await NotifServices().sendNotif(
                        checkType: AbsensiModel.TYPE_CHECKIN,
                        checkTime: DateTime.now().millisecondsSinceEpoch);
                    Fluttertoast.showToast(msg: 'Check In Sukses');
                    setState(() {});
                  } else {
                    Fluttertoast.showToast(msg: 'Check In Gagal');
                  }
                },
                title: 'Check In'),
            MyButtonPrimary(
                onPressed: () async {
                  if (_imageFile == null) {
                    Fluttertoast.showToast(msg: 'Foto harus diisi');
                    return;
                  }
                  final checkinData = CheckInRepos();

                  final res = await checkinData.checkOut(
                      username: username, photo: _imageFile!.path);

                  if (res) {
                    _imageFile = null;
                    await NotifServices().sendNotif(
                        checkType: AbsensiModel.TYPE_CHECKOUT,
                        checkTime: DateTime.now().millisecondsSinceEpoch);
                    Fluttertoast.showToast(msg: 'Check Out Sukses');
                    setState(() {});
                  } else {
                    Fluttertoast.showToast(msg: 'Check Out Gagal');
                  }
                },
                title: 'Check Out'),
            spaceBig(),
            const MyFontBody(
              text:
                  'Notifikasi mungkin mengalami keterlambatan karena padatnya server Firebase Cloud Messaging. Jika demikian, mohon menunggu.',
              textAlign: TextAlign.center,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
