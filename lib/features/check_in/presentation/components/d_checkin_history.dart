import 'dart:io';

import 'package:absensi_nanang/common_widgets/my_fonts.dart';
import 'package:absensi_nanang/features/check_in/data/check_in_repos.dart';
import 'package:absensi_nanang/features/check_in/domain/absensi_model.dart';
import 'package:absensi_nanang/features/check_in/presentation/states/check_in_state.dart';
import 'package:absensi_nanang/utils/dateformat_utils.dart';
import 'package:absensi_nanang/utils/popup_utils.dart';
import 'package:absensi_nanang/utils/size_utils.dart';
import 'package:absensi_nanang/utils/space_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DCheckinHistory extends StatefulWidget {
  const DCheckinHistory({super.key, required this.username});

  final String username;

  @override
  State<DCheckinHistory> createState() => _DCheckinHistoryState();
}

class _DCheckinHistoryState extends State<DCheckinHistory> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  var state = const CheckInHistoryState.initial();
  final double EMPTY_HEIGHT = 160;

  getData() async {
    final checkInData = CheckInRepos();
    final res = await checkInData.getAbsensi(widget.username);

    if (res.isEmpty) {
      state = const CheckInHistoryState.empty();
    } else {
      state = CheckInHistoryState.datas(res);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        state.when(
          initial: () => SizedBox(
            height: EMPTY_HEIGHT,
            child: const Center(
              child: MyFontBody(text: 'Loading...'),
            ),
          ),
          datas: (absensi) => SingleChildScrollView(
              padding: const EdgeInsets.only(top: 48),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(absensi.length, (index) {
                  final longitude = absensi[index].longitude;
                  final latitude = absensi[index].latitude;
                  final location = 'Long($longitude) Lat($latitude)';
                  final checkinTime =
                      DateformatUtils.yMd_add_jm(absensi[index].time_checkin);
                  final checkinTimeText = '$checkinTime';
                  final colorType =
                      absensi[index].check_type == AbsensiModel.TYPE_CHECKIN
                          ? Colors.green
                          : Colors.red;

                  List<Widget> checkOutTime = [const SizedBox()];
                  if (absensi[index].check_type == AbsensiModel.TYPE_CHECKOUT) {
                    final checkoutTime = DateformatUtils.yMd_add_jm(
                        absensi[index].time_checkout);

                    checkOutTime = [
                      const MyFontBody(
                        text: 'Check Out Time',
                        bold: true,
                      ),
                      MyFontBody(text: checkoutTime)
                    ];
                  }
                  return Card(
                    child: Padding(
                        padding: const EdgeInsets.all(SPACESIZE_SMALL),
                        child: Row(
                          children: [
                            Flexible(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const MyFontBody(
                                  text: 'Username',
                                  bold: true,
                                ),
                                MyFontBody(text: absensi[index].username),
                                const MyFontBody(
                                  text: 'Lokasi',
                                  bold: true,
                                ),
                                MyFontBody(text: location),
                                const MyFontBody(
                                  text: 'Check In Time',
                                  bold: true,
                                ),
                                MyFontBody(text: checkinTimeText),
                                ...checkOutTime,
                                Card(
                                  margin: const EdgeInsets.only(
                                      top: SPACESIZE_SMALL_EXTRA),
                                  color: colorType,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: SPACESIZE_SMALL_EXTRA,
                                        vertical: SPACESIZE_SMALL_EXTRAX),
                                    child: MyFontBody(
                                        text: absensi[index].check_type),
                                  ),
                                )
                              ],
                            )),
                            spaceSmall(),
                            Image.file(
                              File(absensi[index].photo),
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            )
                          ],
                        )),
                  );
                }),
              )),
          empty: () => SizedBox(
            height: EMPTY_HEIGHT,
            child: const Center(
              child: MyFontBody(text: 'Tidak ada riwayat'),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    PopupUtils.closeDialog(context);
                  },
                  icon: const Icon(Icons.close)),
              const MyFontAppbar(text: 'Riwayat Check In')
            ],
          ),
        ),
      ],
    );
  }
}
