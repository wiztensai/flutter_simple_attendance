import 'package:absensi_nanang/common_widgets/my_buttons.dart';
import 'package:absensi_nanang/common_widgets/my_fonts.dart';
import 'package:absensi_nanang/common_widgets/my_text_fields.dart';
import 'package:absensi_nanang/features/check_in/presentation/page/check_in.dart';
import 'package:absensi_nanang/features/login/data/login_repos.dart';
import 'package:absensi_nanang/routing/app_router.dart';
import 'package:absensi_nanang/utils/form_validator_utils.dart';
import 'package:absensi_nanang/utils/prefs_utils.dart';
import 'package:absensi_nanang/utils/size_utils.dart';
import 'package:absensi_nanang/utils/space_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  static const NAME = 'Login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  checkLogin() async {
    final res = await PrefsUtils.getLogin();
    if (res) {
      context.replaceRoute(CheckInRoute());
    }
  }

  String assetPath = 'assets/images';

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Login.NAME)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(PADDINGSIZE_BODY),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyFontLabel(text: 'Username', textAlign: TextAlign.left),
                MyTextField(
                  textController: usernameController,
                  hintText: 'Username',
                  validator: FormValidatorUtils.dontNull,
                ),
                spaceSmall(),
                MyFontLabel(text: 'Password'),
                MyTextField(
                  textController: pwdController,
                  hintText: 'Password',
                  obscureText: true,
                  maxLines: 1,
                  validator: FormValidatorUtils.dontNull,
                ),
                spaceBig(),
                MyButtonPrimary(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final loginData = LoginRepos();
                        final username = usernameController.text;
                        final pwd = pwdController.text;

                        final res = await loginData.checkLogin(username, pwd);
                        if (res) {
                          await PrefsUtils.setLogin(true);
                          Fluttertoast.showToast(msg: 'Login berhasil');
                          context.replaceRoute(CheckInRoute());
                        } else {
                          Fluttertoast.showToast(msg: 'Login gagal');
                        }
                      }
                    },
                    title: 'Login'),
                spaceSmall(),
                MyFontBody(
                  text: 'Belum punya akun?',
                  textAlign: TextAlign.center,
                ),
                spaceSmall(),
                MyButtonPrimary(
                    onPressed: () {
                      context.pushRoute(RegisterRoute());
                    },
                    title: 'Daftar')
              ],
            )),
      ),
    );
  }
}
