import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());

  print(dotenv.env['KEY']);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // final client = http.Client();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void playAudio() async {
    // final audio = AudioPlayer();
    // await audio.setUrl(
    //     'https://peregrine-results.s3.amazonaws.com/pigeon/MDVsj7sXxt0IsNDGiU_0.mp3');
  }

  // Future<Response> _getAudioUrl() async {
  //   final myVoiceUrl = Uri();
  //   final boundary = "---011000010111000001101001";
  //   final List<Map<String, String>> parameters = [
  //     {
  //       'name': 'sample_file_url',
  //       'value':
  //           'https://docs.google.com/uc?export=download&id=1EyITjarGDxbV67rIQEAfmGjN81gRvIjk'
  //     },
  //     {'name': 'voice_name', 'value': 'voice_clone_test'}
  //   ];
  //   String body = '';
  //   for (int i = 0; i < parameters.length; i++) {
  //     final paramName = parameters[i]['name']!;
  //     body += '--$boundary\r\n';
  //     body += 'Content-Disposition:form-data; name="$paramName"';
  //     if (parameters[i]['value'] != null) {
  //       body += '\r\n\r\n${parameters[i]['value']!}';
  //     }
  //   }
  //   final res = await client.post(
  //     Uri.https("https://api.play.ht/api/v2/cloned-voices/instant/"),
  //     headers: {
  //       'accept': 'application/json',
  //       'content-type':
  //           'multipart/form-data; boundary=---011000010111000001101001',
  //       'AUTHORIZATION': '',
  //       'X-USER-ID': ''
  //     },
  //     body: body,
  //   );
  //   print(res);
  //   return res;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
