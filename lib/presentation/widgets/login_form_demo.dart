import 'package:flutter/material.dart';

import '../presentation_theme.dart';

/// A fake login form for the audience to direct the agent against, via
/// marionette's enter_text and tap tools — fields and the submit button
/// carry stable keys so they're easy to target by name.
class LoginFormDemo extends StatefulWidget {
  const LoginFormDemo({super.key, required this.accentColor});

  final Color accentColor;

  @override
  State<LoginFormDemo> createState() => _LoginFormDemoState();
}

class _LoginFormDemoState extends State<LoginFormDemo> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _statusMessage;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    final email = _emailController.text;
    final password = _passwordController.text;
    final isValid = email.contains('@') && password.length >= 4;

    setState(() {
      _statusMessage = isValid
          ? 'Bem-vindo(a) de volta, $email!'
          : 'E-mail precisa ter "@" e senha precisa ter 4+ caracteres.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            key: const ValueKey('login_email_field'),
            controller: _emailController,
            style: PresentationText.body,
            decoration: const InputDecoration(labelText: 'E-mail'),
          ),
          const SizedBox(height: PresentationSpacing.sm),
          TextField(
            key: const ValueKey('login_password_field'),
            controller: _passwordController,
            obscureText: true,
            style: PresentationText.body,
            decoration: const InputDecoration(labelText: 'Senha'),
          ),
          const SizedBox(height: PresentationSpacing.md),
          ElevatedButton(
            key: const ValueKey('login_submit_button'),
            onPressed: _submit,
            style: ElevatedButton.styleFrom(backgroundColor: widget.accentColor),
            child: const Text('Entrar'),
          ),
          if (_statusMessage != null) ...[
            const SizedBox(height: PresentationSpacing.md),
            Text(
              _statusMessage!,
              key: const ValueKey('login_status_text'),
              style: PresentationText.caption,
            ),
          ],
        ],
      ),
    );
  }
}
