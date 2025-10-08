import 'package:flutter/material.dart';
import 'loginpage.dart'; // Import LoginPage widget

class SelectInstitutePage extends StatefulWidget {
  const SelectInstitutePage({super.key});

  @override
  State<SelectInstitutePage> createState() => _SelectInstitutePageState();
}

class _SelectInstitutePageState extends State<SelectInstitutePage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _institutes = [
    'Institute 1',
    'Institute 2',
    'Institute 3',
    'Institute 4',
  ];

  List<String> _filteredInstitutes = [];

  @override
  void initState() {
    super.initState();
    _filteredInstitutes = _institutes;
  }

  void _filterInstitutes(String query) {
    setState(() {
      _filteredInstitutes = _institutes
          .where((inst) => inst.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Select Institute',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            TextField(
              controller: _controller,
              onChanged: _filterInstitutes,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Enter Institute name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Dropdown-style list
            Expanded(
              child: ListView.builder(
                itemCount: _filteredInstitutes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredInstitutes[index]),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'You selected: ${_filteredInstitutes[index]}',
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Next button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to LoginPage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 131, 231),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
