import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/profile_info.dart';
import '../widgets/edit_profile_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const UserModel _user = UserModel(
    fullName: 'Nguyễn Hoàng Tuấn Đạt',
    email: '6451071014@st.utc2.edu.vn',
    avatarPath: 'assets/images/avatar.png',
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileAvatar(imagePath: _user.avatarPath),
          const SizedBox(height: 20),
          ProfileInfo(user: _user),
          const SizedBox(height: 24),
          const EditProfileButton(),
        ],
      ),
    );
  }
}
