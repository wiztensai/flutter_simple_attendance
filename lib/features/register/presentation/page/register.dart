import 'package:absensi_nanang/common_widgets/my_buttons.dart';
import 'package:absensi_nanang/common_widgets/my_fonts.dart';
import 'package:absensi_nanang/common_widgets/my_text_fields.dart';
import 'package:absensi_nanang/features/register/data/register_repos.dart';
import 'package:absensi_nanang/features/register/domains/user_model.dart';
import 'package:absensi_nanang/features/register/data/user_query.dart';
import 'package:absensi_nanang/utils/db_utils.dart';
import 'package:absensi_nanang/utils/form_validator_utils.dart';
import 'package:absensi_nanang/utils/size_utils.dart';
import 'package:absensi_nanang/utils/space_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatelessWidget {
  static const NAME = 'Register';

  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final usernameController = TextEditingController();
    final pwdController = TextEditingController();
    final pwdConfController = TextEditingController();
    final dbUtils = DbUtils();

    return Scaffold(
      appBar: AppBar(title: const Text(NAME)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(PADDINGSIZE_BODY),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const MyFontLabel(
                  text: 'Username',
                ),
                MyTextField(
                  textController: usernameController,
                  hintText: 'Username',
                  validator: FormValidatorUtils.dontNull,
                ),
                spaceSmall(),
                const MyFontLabel(text: 'Password'),
                MyTextField(
                  textController: pwdController,
                  hintText: 'Password',
                  validator: FormValidatorUtils.dontNull,
                  obscureText: true,
                  maxLines: 1,
                ),
                spaceSmall(),
                const MyFontLabel(text: 'Konfirmasi Password'),
                MyTextField(
                  textController: pwdConfController,
                  hintText: 'Konfirmasi Password',
                  validator: FormValidatorUtils.dontNull,
                  obscureText: true,
                  maxLines: 1,
                ),
                spaceSmall(),
                MyButtonPrimary(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final username = usernameController.text;
                        final pwd = pwdController.text;
                        final pwdConf = pwdConfController.text;

                        if (pwd.startsWith(pwdConf)) {
                          final regData = RegisterRepos();
                          final checkRegister =
                              await regData.checkRegister(username);

                          if (!checkRegister) {
                            Fluttertoast.showToast(
                                msg: 'Daftar gagal. Username sudah ada');
                            return;
                          }

                          final res = await dbUtils.insert(
                              UserQuery.TABLE_NAME,
                              UserModel(username: username, password: pwd)
                                  .toJson());

                          if (res) {
                            Fluttertoast.showToast(msg: 'Daftar berhasil');
                            context.popRoute();
                          } else {
                            Fluttertoast.showToast(msg: 'Daftar gagal');
                          }
                        } else {
                          Fluttertoast.showToast(
                              msg: 'Konfirmasi password tidak sama');
                        }
                      }
                    },
                    title: 'Daftar'),
              ],
            )),
      ),
    );
  }
}
