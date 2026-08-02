void main(List<String> arguments) {
  // Question no 1:

  Shape shape = Shape();
  Shape shape1 = Shape.circle();
  Shape shape2 = Shape.square();

  print(shape1.type);
  print(shape2.type);

  // Question no 2:

  Laptop laptop = Laptop(brand: 'Dell', price: 400000, ram: 12);
  Laptop laptop1 = Laptop(brand: 'HP', price: 700000);
  print(
    'The Brand od Laptop Is ${laptop1.brand} & The Price Is ${laptop1.price} PKR.',
  );

  print(
    'The Brand od Laptop Is ${laptop.brand} & The Price Is ${laptop.price} PKR & The Ram is ${laptop.ram} GB.',
  );

  // Question no 3:

  UserProfile userProfile = UserProfile(
    name: 'Hamza',
    email: 'hamza.bwp2006@gmail.com',
  );
  UserProfile userProfile1 = UserProfile(
    name: 'Hamza Hafeez',
    city: 'Bahawalpur',
  );
  print(
    'User Profile ::  Name = ${userProfile.name} Email = ${userProfile.email} City = ${userProfile.city}',
  );
  print('User Profile :: Name ${userProfile1.name}, City ${userProfile1.city}');

  // Question no 5:

  Configuration configuration = Configuration(appName: 'PropFind', version: 1);

  print(
    'Configuration App Name Is ${configuration.appName} & App Version Is ${configuration.version}',
  );

  // Question no 8:

  Person p1 = Person('Ali', 2);
  Person p2 = Person.guest();

  print(' p1 Name ${p1.name} Age ${p1.age}');

  print(' p2 Name ${p2.name} Age ${p2.age}');

  // Question no 9:

  Mobile mobile = Mobile('samsung', 'A17');
  Mobile mobile1 = Mobile.iPhone('17 Pro');

  print('Mobile = ${mobile.brand} , ${mobile.model}');
  print('Mobile1 = ${mobile1.brand} , ${mobile1.model}');

  // Question no 10:

  UniversityStudent universityS = UniversityStudent(
    name: 'Hamza',
    rollnumber: 566,
    department: 'medical',
  );
  UniversityStudent universityS1 = UniversityStudent.cs(
    name: 'Hamza',
    rollnumber: 5664,
  );

  print(
    'university Students ${universityS.name} , ${universityS.rollnumber} , ${universityS.department} ',
  );
  print(
    'university Students ${universityS1.name} , ${universityS1.rollnumber} , ${universityS1.department}',
  );
}
