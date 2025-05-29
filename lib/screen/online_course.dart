import 'package:flutter/material.dart';
import 'package:landing_page/screen/course_card.dart';
import 'package:landing_page/widgets/course_grid.dart';

class OnlineCourse extends StatelessWidget {
  const OnlineCourse({super.key});

  Widget _gridItem(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildCategorySection(String title, List<Map<String, String>> courses) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: courses.length,
            itemBuilder: (context, index) {
              final course = courses[index];
              return Container(
                width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'asset/images/microsoftword.png',
                          height: 80,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        course['title']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        course['language']!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        course['participants']!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$39.99",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue.shade50,
                              foregroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Start",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final cyberSecurityCourses = [
      {"title": "Microsoft Word", "language": "ភាសាខ្មែរ", "participants": "99 នាក់"},
      {"title": "Microsoft Word", "language": "ភាសាខ្មែរ", "participants": "99 នាក់"},
      {"title": "Microsoft Word", "language": "ភាសាខ្មែរ", "participants": "99 នាក់"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('asset/images/logoImage.png', height: 30),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    labelText: "Find your interest course",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.close),
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              children: const [
                CourseCard(),
                CourseCard(),
                CourseCard(),
              ],
            ),
            const SizedBox(height: 16),
            _buildCategorySection("Cyber Security", cyberSecurityCourses),
            const SizedBox(height: 16),
            const CourseGrid(),
            Image.asset('asset/images/logoImage.png', height: 50),
            const SizedBox(height: 12),
            SizedBox(
              height: 5 * 50,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _gridItem("About Us"),
                  _gridItem("Social Impact"),
                  _gridItem("Contact Us"),
                  _gridItem("Cookies Setting"),
                  _gridItem("FaQs"),
                  _gridItem("Terms"),
                  _gridItem("Community Forum"),
                  _gridItem("Accessibility Statement"),
                  _gridItem("Term of Service"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Certified',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Image.asset("asset/images/itclogo.png"),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, size: 40, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow, size: 40, color: Colors.red),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.gif_box, size: 40, color: Colors.purple),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text('2023 Worktency, Inc. All rights reserved.'),
            ),
          ],
        ),
      ),
    );
  }
}