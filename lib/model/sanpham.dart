// ignore_for_file: unused_import, non_constant_identifier_names
import 'package:flutter/material.dart';

class SanPham{
  final int Id,Gia,So_Luong,Loai_San_Pham_Id;
  final String Ten_Sp,Man_Hinh,He_Dieu_Hanh,Camera_Truoc,Camera_Sau,Chip,Ram,Rom,Sim,Pin,Hinh_Anh,Mo_Ta;
  // final DateTime Ngay_Tao;
  final bool TrangThai;
  SanPham({
    required this.Id,
    required this.Mo_Ta,
    // required this.Ngay_Tao,
    required this.Gia,
    required this.So_Luong,
    required this.Camera_Sau,
    required this.Camera_Truoc,
    required this.Chip,
    required this.He_Dieu_Hanh,
    required this.Hinh_Anh,
    required this.Loai_San_Pham_Id,
    required this.Man_Hinh,
    required this.Pin,
    required this.Ram,
    required this.Rom,
    required this.Sim,
    required this.Ten_Sp,
    required this.TrangThai,
  });
}

List<SanPham> demoProducts = [
  SanPham(
    Id: 1,
    Hinh_Anh: 
      "assets/images/ps4_console_white_1.png",
    Ten_Sp: "Wireless Controller for PS4™",
    Gia: 64,
    Mo_Ta: description, Camera_Sau: '', Camera_Truoc: '', Chip: '', He_Dieu_Hanh: '', Loai_San_Pham_Id: 1, Man_Hinh: '', Pin: '', Ram: '', Rom: '', Sim: '', So_Luong: 1, TrangThai: true,
  ),
  
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
