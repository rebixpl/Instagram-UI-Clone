import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/ui/home_page.dart';
import 'package:instagram_clone_ui/ui/register_page.dart';
import 'package:instagram_clone_ui/widgets/custom_or_divider.dart';
import 'package:instagram_clone_ui/widgets/custom_textform.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login_page';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _dropdownSelected = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  alignment: Alignment.centerRight,
                  value: _dropdownSelected,
                  items: const [
                    DropdownMenuItem(
                      value: 'English',
                      child: Text('English'),
                    ),
                    DropdownMenuItem(
                      value: 'Indonesia',
                      child: Text('Indonesia'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _dropdownSelected = value!;
                    });
                  },
                ),
              ),
            ),
            Column(
              children: [
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: 'BlueVinyl',
                    fontSize: 64,
                  ),
                ),
                const SizedBox(height: 8),
                const CustomTextForm(
                  hintText: 'Email or Phone number',
                ),
                const SizedBox(height: 8),
                const CustomTextForm(
                  hintText: 'Password',
                  isObsecure: true,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        HomePage.routeName,
                      );
                    },
                    child: const Text(
                      'Log In',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Forgot your login details?',
                          style: TextStyle(color: Colors.black54),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 4,
                          ),
                        ),
                        TextSpan(
                          text: 'Get help logging in',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: CustomOrDivider(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Login with Facebook',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Don\'nt have an account?',
                        style: TextStyle(color: Colors.black54),
                      ),
                      const WidgetSpan(
                        child: SizedBox(
                          width: 4,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(
                                context,
                                RegisterPage.routeName,
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
