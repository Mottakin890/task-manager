import 'package:flutter/material.dart';
import 'package:task_manager/common/theme/app_colors.dart';
import 'package:task_manager/presentation/profile/view/update_profile_view.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.cPrimary,
      title: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UpdateProfileView()),
          );
        },
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/d/1P1zBU7D3Oo5Sw9mZYbXyirigKQ2wZiv2',
              ),
              radius: 25,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Mottakinul Alam",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.bgPrimary,
                    fontWeight: .bold,
                  ),
                ),
                Text(
                  "mottakinulalam@gmail.com",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.copyWith(color: AppColors.bgPrimary),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.logout_outlined, color: AppColors.bgPrimary),
        ),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
