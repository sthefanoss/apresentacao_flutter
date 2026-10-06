import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/login_form_demo.dart';
import '../../widgets/slide_scaffold.dart';

final loginFormSlide = Slide(
  semanticId: 'marionette-login-form',
  eyebrow: 'MARIONETTE',
  title: 'Agora com texto: um login falso',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'Agora com texto: um login falso',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: 'Dite um e-mail e senha — o agente digita e envia por você',
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.marionetteAccent,
          items: [
            'login_email_field e login_password_field: o agente usa '
                'enter_text() pra preencher cada um com o que a plateia '
                'ditar',
            'login_submit_button: tap() envia o formulário — a validação '
                'é só local, bobinha de propósito (e-mail com "@", senha '
                'com 4+ caracteres)',
            'login_status_text muda na hora — dá pra pedir pro agente '
                'ler o texto de volta com get_interactive_elements e '
                'confirmar o que aconteceu',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        Center(
          child: LoginFormDemo(accentColor: PresentationColors.marionetteAccent),
        ),
      ],
    ),
  ),
);
