import 'package:flutter/material.dart';

import '../../controllers/check_permission_bloc/check_permission_bloc.dart';

class PermissionItemModel {
  final String title;
  final IconData icon;
  final String subtitle;
  final PermissionType type;
  PermissionItemModel({
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.type,
  });
}
