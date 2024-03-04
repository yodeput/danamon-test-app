import 'package:danamonTest/common/extension/context.dart';
import 'package:danamonTest/common/gen/assets.gen.dart';
import 'package:danamonTest/common/ui/dialog/dialogs.dart';
import 'package:danamonTest/common/ui/input/input_field.dart';
import 'package:danamonTest/common/ui/widget/custom_image.dart';
import 'package:danamonTest/common/ui/widget/page.dart';
import 'package:danamonTest/common/ui/widget/spacer.dart';
import 'package:danamonTest/common/util/validators.dart';
import 'package:danamonTest/feature/home/users/cubit/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shimmer/shimmer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AdminHomeTab extends StatefulWidget {
  const AdminHomeTab({super.key});

  @override
  State<AdminHomeTab> createState() => _AdminHomeTabState();
}

class _AdminHomeTabState extends State<AdminHomeTab> {
  final List<User> _users = [];
  final ScrollController _scrollController = ScrollController();

  Future<void> _refreshData() async {
    _users.clear();
    context.read<UsersCubit>()
      ..isFetching = true
      ..fetchData(isRefresh: true);
  }

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: [
          IconButton(
              onPressed: () => _showUserForm(null), icon: Icon(Icons.add)),
          IconButton(onPressed: _refreshData, icon: Icon(Icons.refresh))
        ],
      ),
      body: BlocConsumer<UsersCubit, UsersState>(
        listener: (context, state) {
          if (state is UserFormSuccess) {
            context.back();
            context.back();
            _refreshData();
          }

          if (state is UsersFormLoading) {
            Dialogs.showLoadingDialog(context);
          }

          if (state is UserFormError) {
            context.back();
            context.showSnackBarMessage(
              state.message,
              type: SnackbarType.error,
            );
          }

          if (state is UsersListSuccess && state.dataList.isNotEmpty) {
            _users.addAll(state.dataList);
            context.read<UsersCubit>().isFetching = false;
          } else if (state is UsersListSuccess && state.dataList.isEmpty) {
            context.showSnackBarMessage('Tidak ada data lagi',
                type: SnackbarType.warning);
          } else if (state is UsersListError) {
            context.showSnackBarMessage(
              state.message,
              type: SnackbarType.error,
            );
            context.read<UsersCubit>().isFetching = false;
          }
          return;
        },
        builder: (context, state) {
          if (state is UsersListLoading && _users.isEmpty) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _loadingAnimation();
              },
            );
          }
          return SafeArea(
            child: RefreshIndicator(
              onRefresh: _refreshData,
              child: ListView.separated(
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.offset ==
                            _scrollController.position.maxScrollExtent &&
                        !context.read<UsersCubit>().isFetching) {
                      context.read<UsersCubit>()
                        ..isFetching = true
                        ..fetchData();
                    }
                  }),
                itemBuilder: (context, index) {
                  return _userItem(index, context);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: _users.length,
              ),
            ),
          );
        },
      ),
    );
  }

  Shimmer _loadingAnimation() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: PagePadding(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomImage.rounded(
                  size: 100,
                  url: 'https://via.placeholder.com/150/92c952',
                ),
                const CustomSpacer.horizontal(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomSpacer.vertical(
                        scale: .5,
                      ),
                      Container(
                        height: 14,
                        color: Colors.white,
                      ),
                      const CustomSpacer.vertical(),
                      Container(
                        height: 14,
                        color: Colors.white,
                      ),
                      const CustomSpacer.vertical(),
                      Container(
                        height: 14,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _userItem(int index, BuildContext context) {
    return PagePadding(
      child: InkWell(
        onTap: () {
          _showUserForm(_users[index]);
        },
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage.rounded(
                  size: 100,
                  path: Assets.image.logo.avatar.path,
                ),
                const CustomSpacer.horizontal(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'ID: ',
                          style: context.textTheme.titleSmall,
                          children: <TextSpan>[
                            TextSpan(
                              text: _users[index].id.toString(),
                              style: context.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Name: ',
                          style: context.textTheme.titleSmall,
                          children: <TextSpan>[
                            TextSpan(
                              text: _users[index].userMetadata?['name']
                                      as String ??
                                  '',
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Email: ',
                          style: context.textTheme.titleSmall,
                          children: <TextSpan>[
                            TextSpan(
                              text: _users[index].email ?? '',
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Role: ',
                          style: context.textTheme.titleSmall,
                          children: <TextSpan>[
                            TextSpan(
                              text: _users[index].userMetadata?['access_level']
                                      as String ??
                                  '',
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _showUserForm(User? user) {
    _formKey.currentState?.reset();
    _nameController.clear();
    _emailController.clear();
    _passwordController.clear();
    _selectedRole = null;

    if (user != null) {
      _nameController.text = (user.userMetadata?['name'] ?? '') as String;
      _emailController.text = user.email ?? '';
      _selectedRole = (user.userMetadata?['access_level'] ?? '') as String;
    }

    showCupertinoModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isDismissible: true,
      settings: RouteSettings(name: '/edit-user'),
      barrierColor: Colors.black54,
      builder: (context) => Material(
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            controller: ModalScrollController.of(context),
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomSpacer.vertical(),
                  AppBar(
                    title: Text(user != null ? 'Edit User' : 'New User'),
                    actions: [
                      IconButton(
                        onPressed: () => _deleteUser(user?.id ?? ''),
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                  Form(
                    key: _formKey,
                    child: PagePadding(
                      vertical: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomSpacer.vertical(),
                          InputField.name(
                            label: 'Nama',
                            controller: _nameController,
                            textInputAction: TextInputAction.next,
                          ),
                          const CustomSpacer.vertical(scale: 2),
                          InputField.email(
                            label: 'Email',
                            controller: _emailController,
                            textInputAction: TextInputAction.next,
                          ),
                          if (user == null)
                            Column(
                              children: [
                                const CustomSpacer.vertical(scale: 2),
                                InputField.password(
                                  label: 'Password',
                                  controller: _passwordController,
                                  textInputAction: TextInputAction.next,
                                ),
                              ],
                            ),
                          const CustomSpacer.vertical(scale: 2),
                          DropdownButtonFormField<String>(
                            value: _selectedRole,
                            validator: Validators.required,
                            items: <String>['Admin', 'Normal User']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedRole = newValue;
                              });
                            },
                            style: context.textTheme.bodyLarge,
                            decoration: InputDecoration(
                              labelText: 'Role',
                              border: context.inputDecorationTheme.border,
                            ),
                          ),
                          const CustomSpacer.vertical(scale: 3),
                          const CustomSpacer.vertical(scale: 3),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ElevatedButton(
                                onPressed: () => _submit(context, user),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      context.colorScheme.tertiaryContainer,
                                ),
                                child: /* state is UserFormLoading
                                    ? CircularProgressIndicator(
                                        color: context
                                            .colorScheme.onTertiaryContainer,
                                      )
                                    : */
                                    Text(
                                  'Simpan',
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
                                    color:
                                        context.colorScheme.onTertiaryContainer,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const CustomSpacer.vertical(scale: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () => context.back(),
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text(
                                  'Tutup',
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
                                    color: context.colorScheme.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _deleteUser(String userId) async {
    var result = await Dialogs.showConfirmationDialog(context,
        confirmText: 'Delete',
        title: 'Hapus',
        message: 'Anda akan menghapus User tersebut?');
    if (result) {
      context.read<UsersCubit>()..delete(userId);
    }
  }

  void _submit(BuildContext context, User? user) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    context.closeKeyboard();

    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    final payload = {
      'name': name,
      'email': email,
      'password': password,
      'role': _selectedRole ?? '',
    };
    if (user != null) {
      context.read<UsersCubit>().update({
        'id': user.id,
        'name': name,
        'email': email,
        'role': _selectedRole ?? '',
      });
    } else {
      context.read<UsersCubit>().create(payload);
    }
  }
}
