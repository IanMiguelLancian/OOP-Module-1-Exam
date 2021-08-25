// This is an example of a abstraction, where user(Seller and customer)
// has their own account and designated site and only them can access it.
class User {
  String uName;
  String pWord;
  
  checkUser() {
    print('Checking user...');
  }
  //Encapsulation
  wUser(){
    print('Please wait');
    if(uName == 'Seller') {
      print('Welcome! here are the updates of the shop');
      return 'Seller';
    } else {
      print('Welcome customer!');
      return 'Customer';
    }
  }
  status() {
    checkUser();
    String account = wUser();
    print('Logged in. ['+account+'] point of view');
  }
  User(this.uName, this.pWord);
}

void main() {
  User sAccount = User('Miguel', 'seller123');
//sAccount.status();
  
  User cAccount = User('Ian', 'customer123');
  cAccount.status();
}

//This is an example of an inheritance where a class(boy) got access from other 
//classes, in this case the class(person).
class Person {
  
  void select(){
    print('selecting...');
  }
  
  void browse(){
    print('browsing...');
  }
  
  void add(){
    print('Adding to cart...');
  }
}
class Boy extends Person {
  
}
  
void main() {
  Boy miguel = Boy();
  miguel.select();
  miguel.browse();
  miguel.add();
}















