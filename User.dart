/*
Создайте класс User, у которого есть поле email. 
Реализуйте два наследника данного класса AdminUser и GeneralUser. 
Реализуйте maxin над классом User, у которого будет метод getMailSystem, 
который возвращает значение из email, которое находится после @. 
Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. 
Используйте данный максин на AdminUser. 
Далее реализуйте класс UserManager < T extends User, у которого будет храниться
список пользователей и будут методы добавления или удаления их. 
Также в UserManager реализуйте метод, который выведет почту всех пользователей, 
однако если пользователь admin, будет выведено значение после @.
*/

class User {
  String email;

  User(this.email);
}

class AdminUser extends User with MailSystemMixin {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin MailSystemMixin on User {
  String getMailSystem() {
    List<String> parts = email.split('@');
    if (parts.length == 2) {
      return parts[1];
    } else {
      throw ArgumentError('Invalid email format');
    }
  }
}

class UserManager<T extends User> {
  List<T> users = [];

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    users.remove(user);
  }

  void printAllEmails() {
    for (var user in users) {
      if (user is AdminUser) {
        print('Admin email system: ${user.getMailSystem()}');
      } else {
        print('User email: ${user.email}');
      }
    }
  }
}

void main() {
  AdminUser admin = AdminUser('admin@example.com');
  GeneralUser user1 = GeneralUser('user1@gmail.com');
  GeneralUser user2 = GeneralUser('user2@yahoo.com');

  UserManager<User> userManager = UserManager<User>();
  userManager.addUser(admin);
  userManager.addUser(user1);
  userManager.addUser(user2);

  userManager.printAllEmails();
}