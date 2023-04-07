// import 'dart:ui';
import 'package:flutter/material.dart';

/// A placeholder class that represents an entity or model.
class CvProfile {
  const CvProfile( this._id, this._fullName, this._email, this._phoneNumber, this._address, this._city, this._country, this._zipCode, this._imageNamePlusExtension);
  // {
  //   required this.id,
  //   required this.fullName,
  //   required this.email,
  //   required this.phoneNumber,
  //   required this.address,
  //   required this.city,
  //   required this.country,
  //   required this.zipCode,
  //   required this.imageNamePlusExtension,
  // });
  final int _id;
  final String _fullName;
  final String _email;
  final String _phoneNumber;
  final String _address;
  final String _city;
  final String _country;
  final String _zipCode;
  final String _imageNamePlusExtension;

  int get id => _id;

  String get imageNamePlusExtension => _imageNamePlusExtension;

  String get zipCode => _zipCode;

  String get country => _country;

  String get city => _city;

  String get address => _address;

  String get phoneNumber => _phoneNumber;

  String get email => _email;

  String get fullName => _fullName;
}
