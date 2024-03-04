import 'package:flutter/material.dart';
import 'package:danamonTest/common/extension/string.dart';

abstract class Validators {
  Validators._();

  static FormFieldValidator<String>? getValidator(TextInputType? keyboardType) {
    return switch (keyboardType) {
      TextInputType.emailAddress => Validators.email,
      TextInputType.number => Validators.number,
      _ => null,
    };
  }

  static String? required(String? input) {
    if (input?.trim().isEmpty ?? true) {
      return 'Harus diisi';
    }

    return null;
  }

  static String? requiredTyped<T>(T? input) {
    if (input == null) {
      return 'Harus diisi';
    }

    return null;
  }

  static String? email(String? email) {
    if (email == null || email.isEmpty) {
      return 'Harus diisi';
    }

    if (!email.isValidEmail()) {
      return 'Format email tidak sesuai';
    }

    return null;
  }

  static String? password(String? password) {
    if (password == null || password.isEmpty) {
      return 'Harus diisi';
    }

    if (password.length < 8) {
      return 'Password minimal 8 karakter';
    }

    /*if (!password.contains(RegExp('[A-Z]'))) {
      return 'Password harus mengandung minimal satu huruf kapital';
    }
*/
    return null;
  }

  static String? passwordConfirm(
    String? password,
    String? passwordConfirm,
  ) {
    if (password == null || password.isEmpty) {
      return 'Harus diisi';
    }

    if (password.length < 8) {
      return 'Password minimal 8 karakter';
    }

    if (password != passwordConfirm) {
      return 'Password Konfirmasi tidak sesuai';
    }
    /*if (!password.contains(RegExp('[A-Z]'))) {
      return 'Password harus mengandung minimal satu huruf kapital';
    }
*/
    return null;
  }

  static String? number(String? input) {
    if (input == null) {
      return 'Harus diisi';
    }

    final number = num.tryParse(input);
    if (number == null) {
      return 'Hanya input angka';
    }

    return null;
  }

  static String? phone(String? input) {
    final regExp = RegExp(r'^(\+62|62|0)\d{2,4}\d{5,}$');
    if (input == null) {
      return 'Harus diisi';
    }

    if (regExp.hasMatch(input) == false) {
      return 'Nomor Selular tidak valid';
    }

    return null;
  }

  static String? positiveInteger(String? input) {
    if (input == null) {
      return 'Harus diisi';
    }

    final integer = int.tryParse(input);
    if (integer == null || integer <= 0) {
      return 'Masukan angka positif';
    }

    return null;
  }
}
