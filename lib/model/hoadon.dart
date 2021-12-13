// ignore_for_file: unused_import, non_constant_identifier_names
import 'dart:ffi';
import 'package:flutter/material.dart';

class HoaDon{
  final int Id,NguoiDung_Id;
  final Float Tong_Tien;
  final String Dia_Chi_Nhan,Ten_Nguoi_Nhan,Mo_Ta,Email_Nguoi_Nhan;
  final int Trang_Thai;
  final DateTime Ngay_Tao,Ngay_Giao_Hang,Ngay_Nhan_Hang;
  HoaDon({
    required this.Id,
    required this.NguoiDung_Id,
    required this.Tong_Tien,
    required this.Dia_Chi_Nhan,
    required this.Ten_Nguoi_Nhan,
    required this.Email_Nguoi_Nhan,
    required this.Ngay_Tao,
    required this.Mo_Ta,
    required this.Ngay_Giao_Hang,
    required this.Ngay_Nhan_Hang,
    required this.Trang_Thai,
  });
}