// ignore_for_file: unused_import, non_constant_identifier_names
import 'package:flutter/material.dart';

class TrangThaiGiaoHang{
  final int Id;
  final String Ten_Trang_Thai,Mo_Ta;
  final bool Trang_Thai;
  final DateTime Ngay_Tao;
  TrangThaiGiaoHang({
    required this.Ngay_Tao,
    required this.Mo_Ta,
    required this.Id,
    required this.Trang_Thai,
    required this.Ten_Trang_Thai,
  });
}