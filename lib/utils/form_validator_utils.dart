class FormValidatorUtils {
  static String? dontNull(value) {
    if (value == null || value.isEmpty) {
      return 'Mohon isi dengan benar';
    }
    return null;
  }
}
