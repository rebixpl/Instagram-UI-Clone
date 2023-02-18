import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/widgets/custom_or_divider.dart';
import 'package:instagram_clone_ui/widgets/custom_textform.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = "/register_page";
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Instagram',
                style: TextStyle(
                  fontFamily: 'Billabong',
                  fontSize: 64,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  'Sign up to see photos and videos from your friends.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 45,
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.facebook),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Comming Soon')),
                  );
                },
                label: const Text('Log in with facebook'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: CustomOrDivider(),
            ),
            const CustomTextForm(
              hintText: 'Mobile number or Email',
              isObsecure: false,
            ),
            const CustomTextForm(
              hintText: 'Full name',
              isObsecure: false,
            ),
            const CustomTextForm(
              hintText: 'Username',
              isObsecure: false,
            ),
            const CustomTextForm(
              hintText: 'Password',
              isObsecure: true,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Comming Soon')),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'By signing up, you agree to our',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 4),
                    ),
                    TextSpan(
                      text: 'Terms, Data Policy and Cookies Policy.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Have an account?',
                      style: TextStyle(color: Colors.black54),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 4),
                    ),
                    TextSpan(
                      text: 'Log In',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
