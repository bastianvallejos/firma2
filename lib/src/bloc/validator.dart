import 'dart:async';

class Validator {
  final validarEmail = //validacion de email completa por caracteres
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);

    if (regExp.hasMatch(email)) {
      sink.add(email); // valida el email ingresado por el usuario
    } else {
      sink.addError('Email invalido'); //validacion incorrecta de mail
    }
  });

  final validarPassword = StreamTransformer<String, String>.fromHandlers(
      //validacion de contraseña de usuario
      handleData: (password, sink) {
    if (password.length >= 6) {
      //minimo 6 caracteres para la validacion de password
      sink.add(password);
    } else {
      sink.addError(
          'Necesita contraseña mas larga'); //validacion incorrecta de contraseña
    }
  });
}



/// DATA : [
///   
///   usuarios: [
///    email: "",
///    nombre: "",
///    apelliido: "",
///    fechaNacimiento "", 
/// ]
/// 
/// ]
/// 
/// 
/// 
/// 
/// 