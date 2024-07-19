class Project {
  final String name;
  final String description;
  final String link;
  final String image;
  Project(this.name, this.description,  this.link, this.image);

}
 List<Project> projectList = [
  Project(
      'PDF converter',
      'Our PDF Converter app is a powerful tool designed to simplify your document management. With this app, you can effortlessly convert photos into PDF format, ensuring your documents are always in a convenient and universally accessible format',
      'https://www.amazon.com/gp/product/B0D3GJF246',
      'assets/images/screen.png',
  ),

   Project(
     'College Predictor',
     ' Navigating the complex world of college admissions can be overwhelming. Our College Predictor app helps students make informed decisions about their higher education. By entering your rank from various engineering entrance exams like the Joint Entrance Examination (JEE), Uttar Pradesh Technical University (UPTU), and Dr. A.P.J. Abdul Kalam Technical University (AKTU), our app predicts the colleges you are likely to get into',
      'https://www.amazon.com/dp/B0D63KVB28/ref=apps_sf_sta',
     'assets/images/predectu.png',
   ),


];