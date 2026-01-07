import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';
enum UserRole { merchant, customer }
class RoleWidget extends StatefulWidget {
  const RoleWidget({super.key});

  @override
  State<RoleWidget> createState() => _RoleWidgetState();
}

class _RoleWidgetState extends State<RoleWidget> {
 UserRole? selectedRole;

    Widget roleCard({
    required UserRole role,
    required String title,
    required IconData icon,
  }) {
    final bool isSelected = selectedRole == role;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRole = role;
        });
      },
      child: Card(
        elevation: isSelected ? 6 : 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isSelected ? AppColors.primaryColor : AppColors.thirdColor,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected ? AppColors.primaryColor :AppColors.secondColor,
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? AppColors.primaryColor: AppColors.secondColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      roleCard(
                        role: UserRole.merchant,
                        title: 'Merchant',
                        icon: Icons.storefront,
                      ),
                      roleCard(
                        role: UserRole.customer,
                        title: 'Customer',
                        icon: Icons.person_outline,
                      ),
                    ],
                  );
  }
}