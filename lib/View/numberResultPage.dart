import 'package:flutter/material.dart';

class NumberResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final friendship = args['friendship']!;
    final divisorsN1 = args['divisorsN1']!;
    final divisorsN2 = args['divisorsN2']!;

    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado de amistad', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            // Impresión de resultados
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(friendship),
                    SizedBox(height: 20),
                    Text(divisorsN1),
                    SizedBox(height: 20),
                    Text(divisorsN2),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back),
              label: Text('Volver'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
