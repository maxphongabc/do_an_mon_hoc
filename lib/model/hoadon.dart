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
     this.Id,
     this.NguoiDung_Id,
     this.Tong_Tien,
     this.Dia_Chi_Nhan,
     this.Ten_Nguoi_Nhan,
     this.Email_Nguoi_Nhan,
     this.Ngay_Tao,
     this.Mo_Ta,
     this.Ngay_Giao_Hang,
     this.Ngay_Nhan_Hang,
     this.Trang_Thai,
  });
}