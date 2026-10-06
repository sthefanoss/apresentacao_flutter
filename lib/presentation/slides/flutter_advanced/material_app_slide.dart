import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final materialAppSlide = Slide(
  semanticId: 'flutter-advanced-material-app',
  eyebrow: 'FLUTTER',
  title: 'MaterialApp',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'MaterialApp',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'Os componentes prontos do Material Design',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'MaterialApp: a raiz do app Material — define tema, rotas, '
            'localização e o Navigator padrão',
        'Scaffold: estrutura de tela pronta — AppBar, body, '
            'FloatingActionButton, Drawer, BottomNavigationBar',
        'Entrada e ação prontos: TextField, Checkbox, Switch, '
            'ElevatedButton, IconButton',
        'Feedback visual pronto: SnackBar, AlertDialog, Card, ListTile, '
            'CircularProgressIndicator',
      ],
    ),
  ),
);
