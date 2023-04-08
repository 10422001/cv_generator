// import 'dart:ui';
import 'package:flutter/material.dart';

/// A placeholder class that represents an entity or model.
class CvProfile {
  const CvProfile( this.id, this.fullName, this.email, this.phoneNumber, this.address, this.city, this.country, this.zipCode, this.imageNamePlusExtension);
  final int id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String address;
  final String city;
  final String country;
  final String zipCode;
  final String imageNamePlusExtension;

}
