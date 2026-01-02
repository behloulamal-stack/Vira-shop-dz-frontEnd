import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vira_shop_dz/Features/Authentication/presentation/bloc/cubit/auth_cubit.dart';


enum UserRole { merchant, customer }

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            color: isSelected ? Colors.blue : Colors.grey.shade300,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected ? Colors.blue : Colors.grey,
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.blue : Colors.black,
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: context.read<AuthCubit>().registerformKey,
              child: Column(
                children: [
                  SizedBox(height: 150),
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  // CoustomTextField(
                  //   controller: context.read<AuthCubit>().registeremail,
                  //   hintText: 'Enter your email',
                  //   prefixIcon: Icon(Icons.email),
                  // ),
                  // CoustomTextField(
                  //   controller: context.read<AuthCubit>().registerusername,
                  //   hintText: 'user name',
                  //   prefixIcon: Icon(Icons.person),
                  // ),

                  // CoustomTextField(
                  //   controller: context.read<AuthCubit>().registerpassword,
                  //   hintText: 'Enter you password',
                  //   prefixIcon: Icon(Icons.wifi_password_outlined),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      roleCard(
                        role: UserRole.merchant,
                        title: 'merchant',
                        icon: Icons.storefront,
                      ),
                      roleCard(
                        role: UserRole.customer,
                        title: 'customer',
                        icon: Icons.person_outline,
                      ),
                    ],
                  ),

                  SizedBox(height: 50),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is RegisterSuccess) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text('user success')));
                        Navigator.pop(context);
                      } else if (state is RegisterFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.errMessage)),
                        );
                      }
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 77),
                        ),
                        onPressed: () {
                          if (context
                              .read<AuthCubit>()
                              .registerformKey
                              .currentState!
                              .validate()) {
                            if (selectedRole == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Please select a role')),
                              );
                              return;
                            }
                            // String role = selectedRole == UserRole.merchant ? 'merchant' : 'customer';
                            BlocProvider.of<AuthCubit>(context).register();
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('You have a account ? '),
                        GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: Center(
                            child: Text(
                              'Log in',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
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
}
