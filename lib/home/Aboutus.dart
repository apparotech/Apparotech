import 'package:apparotech/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  AboutUsPage({super.key});
  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('About Us'),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Innovating Today for a Better Tomorrow',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:FontWeight.bold, color: Colors.black
                ),
              ),
              SizedBox(height: 16,),
              Text(
                'Welcome to our startup, where we transform creative ideas into innovative applications designed to simplify and enhance your daily life.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 16),
              Text(
                'Currently, we are a dynamic team of two passionate individuals dedicated to developing solutions that meet the evolving needs of our users.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 16,
              ),
              Text(
                'As we grow and our budget increases, we plan to expand our team and venture into producing hardware products that are fully made in India.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                height: 16
              ),
              Text(
                  'We aim to create software solutions that not only meet but exceed user expectations, laying the foundation for future hardware products that are proudly made in India.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 16),
              Text(
                'Our journey is driven by innovation, creativity, and a commitment to excellence.',
                style: TextStyle(fontSize: 16 , color: Colors.black),
              ),
              SizedBox(height: 32),
              Text(
                'Join Us on Our Journey:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold, color: Colors.black
                ),
              ),
              SizedBox(height: 16),
              Text(
                'We are excited about the future and invite you to join us on this journey. As we grow, we look forward to expanding our team and continuing to develop groundbreaking products that make a difference.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 16),
              Text(
                'If you have any questions or need assistance, please don\'t hesitate to reach out to us.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                  onPressed: () {
                    launch('mailto:apparotech@gmail.com');
                  },
                  child: Text('Contact Us'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}