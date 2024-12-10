import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> medicines = [
    {'name': 'Paracetamol', 'description': 'Pain relief and fever reducer'},
    {'name': 'Ibuprofen', 'description': 'Anti-inflammatory medication'},
    {'name': 'Amoxicillin', 'description': 'Antibiotic for infections'},
    {'name': 'Cetrizine', 'description': 'Allergy relief'},
    {'name': 'Metformin', 'description': 'Diabetes medication'},
    {'name': 'Dart', 'description': 'Headache medication'},
  ];

 
  final List<Map<String, String>> doctors = [
    {'specialization': 'General Consultancy', 'name': 'Dr. Revanth'},
    {'specialization': 'Dermatologist', 'name': 'Dr. Srisha'},
    {'specialization': 'Orthopedics', 'name': 'Dr. Sunil Reddy'},
    {'specialization': 'Cardiologist', 'name': 'Dr. Abdul Sami'},
    {'specialization': 'ENT', 'name': 'Dr. Sujitha Chowdary '},
  ];

  String? selectedMedicine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/pharmatech.png",
                  width: 160,
                  height: 160,
                ),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pharmacy",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Please enter the name of the medicine required",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(138, 144, 162, 1),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          selectedMedicine = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Type Here",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () {
                        if (selectedMedicine != null &&
                            selectedMedicine!.isNotEmpty) {
                          final matchingMedicine = medicines.firstWhere(
                            (medicine) =>
                                medicine['name']!.toLowerCase() ==
                                selectedMedicine!.toLowerCase(),
                            orElse: () => {
                              'name': 'Not Found',
                              'description': 'Medicine not available',
                            },
                          );
                          _showMedicineDetails(context, matchingMedicine);
                        }
                      },
                      child: const Text("Search Medicine"),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Available Doctors",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: doctors.length,
                      itemBuilder: (context, index) {
                        final doctor = doctors[index];
                        return ListTile(
                          title: Text(doctor['name']!),
                          subtitle: Text(doctor['specialization']!),
                          trailing: Icon(Icons.arrow_forward),
                          onTap: () {
                            _showDoctorDetails(context, doctor);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showMedicineDetails(BuildContext context, Map<String, String> medicine) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(medicine['name']!),
          content: Text(medicine['description']!),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Add to Cart"),
            ),
          ],
        );
      },
    );
  }

  void _showDoctorDetails(BuildContext context, Map<String, String> doctor) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(doctor['name']!),
          content: Text("Specialization: ${doctor['specialization']}"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Book Appointment"),
            ),
          ],
        );
      },
    );
  }
}
