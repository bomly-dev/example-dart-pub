import 'package:http/http.dart' as http;
import 'package:archive/archive.dart';
import 'package:path/path.dart' as path;

Future<void> main() async {
  // Reachable: http.get (http@0.12.0 - older release)
  final response = await http.get(Uri.parse('https://example.com'));
  print('Status: ${response.statusCode}');

  // Reachable: archive usage (archive@3.3.0 - CVE-2023-36090 path traversal)
  final archive = Archive();
  print('Archive entries: ${archive.files.length}');

  // Safe direct dep
  print('Current path: ${path.current}');
}
