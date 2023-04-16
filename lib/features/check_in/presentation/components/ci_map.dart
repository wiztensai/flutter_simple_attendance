import 'package:absensi_nanang/common_widgets/my_buttons.dart';
import 'package:absensi_nanang/common_widgets/my_fonts.dart';
import 'package:absensi_nanang/features/check_in/data/check_in_repos.dart';
import 'package:absensi_nanang/features/check_in/presentation/states/check_in_state.dart';
import 'package:absensi_nanang/utils/popup_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class CiMap extends StatefulWidget {
  const CiMap({super.key});

  @override
  State<CiMap> createState() => _CiMapState();
}

class _CiMapState extends State<CiMap> {
  @override
  void initState() {
    super.initState();
  }

  CheckInState state = const CheckInState.initial();

  Future<bool> checkPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: null,
          content: const MyFontBody(text: """
Mohon nyalakan lokasi di pengaturan.
"""),
          actions: [
            MyButtonPrimary(
                onPressed: () async {
                  final res = await Geolocator.openLocationSettings();
                  if (res) {
                    PopupUtils.closeDialog(context);
                  }
                },
                title: 'Buka Pengaturan Lokasi')
          ],
        ),
      );

      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
            title: null,
            content: const MyFontBody(text: """
Izin lokasi ditolak. Mohon aktifkan untuk menikmati keseluruhan fitur.

Cara untuk mengizinkan akses lokasi:
1. Buka 'Setting'
2. Pilih 'Izin'
3. Izinkan 'Lokasi'
"""),
            actions: [
              MyButtonPrimary(
                  onPressed: () async {
                    final res = await Geolocator.openAppSettings();
                    if (res) {
                      PopupUtils.closeDialog(context);
                    }
                  },
                  title: 'Buka Setting')
            ],
          ),
        );
        return false;
      }

      if (permission == LocationPermission.denied) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
            title: null,
            content: const MyFontBody(
                text:
                    'Mohon izinkan untuk akses lokasi untuk menikmati keseluruhan fitur'),
            actions: [
              MyButtonPrimary(
                onPressed: () async {
                  PopupUtils.closeDialog(context);
                  await getCurrentLocation();
                },
                title: 'Izinkan Lokasi',
              )
            ],
          ),
        );
        return false;
      }
    }
    return true;
  }

  Future<void> getCurrentLocation() async {
    await checkPermission();

    Position loc = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    longitude = loc.longitude;
    latitude = loc.latitude;

    state =
        CheckInState.currentLoc(LatLng(loc.latitude ?? 0, loc.longitude ?? 0));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
        onFocusGained: () async {
          await getCurrentLocation();
        },
        child: state.when(
          initial: () => const SizedBox(
            height: 200,
            child: Center(
              child: MyFontBody(
                text: 'Loading...',
              ),
            ),
          ),
          currentLoc: (LatLng latLng) => SizedBox(
              height: 200,
              child: FlutterMap(
                options: MapOptions(center: latLng, zoom: 18, maxZoom: 22),
                nonRotatedChildren: [],
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app',
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: latLng,
                        width: 100,
                        height: 100,
                        builder: (context) =>
                            const Icon(Icons.location_on, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              )),
        ));
  }
}
