//import 'dart:ffi';
import 'dart:io';
import 'dart:math';

/*
void main() {
  stdout.write("What's your name ?\t");
  String? name = stdin.readLineSync();
  stdout.write("and your age ?\t");
  String? ageInput = stdin.readLineSync();
  int age = int.tryParse(ageInput ?? '') ?? 0;
  stdout.write("Your name is $name and your $age is age\n");
  stdout.write("In ${100 - age} years, you will have 100 years old \n \n");
}
void main() {

  stdout.write("Give me a number non decimal\t");
  String? xInput = stdin.readLineSync();
  int x = int.tryParse(xInput ?? '') ?? 0;
  String test = x % 2 == 0 ? "even" : "odd";
  stdout.write("your number $x is $test\n");
}
void main() {
  List<int> a = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> test = [];
  for (int i = 0; i < a.length; i++) {
    if (a[i] < 5) {
      test.add(a[i]);
    }
  }
  stdout.write("the numbers less than 5 are ${test.join(', ')}");
}
void main() {
  stdout.write("Give me a number \t");
  String? strNumber = stdin.readLineSync();
  int nb = int.tryParse(strNumber ?? '') ?? 0;
  List<int> divisors = [];
  for (int i = 1; i <= nb; i++) {
    if (nb % i == 0) {
      divisors.add(i);
    }
  }
  stdout.write("The divisors of $nb are ${divisors.join(', ')}");
}

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        stdout.write("${a[i]} ");
      }
    }
  }
}
void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  Set<int> c = {};
  for (var i in a) {
    for (var j in b) {
      if (i == j) {
        c.add(i);
      }
    }
  }
  // One liner using set intersections
  print(Set.from(a).intersection(Set.from(b)).toList());
}

void main() {
  stdout.write("Give me a word\t");
  String? word = stdin.readLineSync();
  for (int i = 0; i < word!.length / 2; i++) {
    if (word[i] != word[word.length - i - 1]) {
      stdout.write("The word $word is not a palindrome\n");
      return;
    }
  }
  stdout.write("The word $word is a palindrome\n");
}
void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> b = [];
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      b.add(a[i]);
    }
  }
  stdout.write("The even numbers in the list are ${b.join(', ')}");
}

void main() {
  stdout.write("write rock, paper or scissors\t");
  String? userChifumi = stdin.readLineSync();
  while (userChifumi != "rock" &&
      userChifumi != "paper" &&
      userChifumi != "scissors") {
    stdout.write("write rock, paper or scissors\t");
    userChifumi = stdin.readLineSync();
  }
  int nbUserChifumi = 0;
  if (userChifumi == "rock") {
    nbUserChifumi = 0;
  } else if (userChifumi == "paper") {
    nbUserChifumi = 1;
  } else {
    nbUserChifumi = 2;
  }
  var rdValue = Random().nextInt(3);
  if (rdValue == 0 && nbUserChifumi == 1) {
    print("You win, the computer chose rock");
  } else if (rdValue == 0 && nbUserChifumi == 2) {
    print("You lose, the computer chose rock");
  } else if (rdValue == 1 && nbUserChifumi == 0) {
    print("You lose, the computer chose paper");
  } else if (rdValue == 1 && nbUserChifumi == 2) {
    print("You win, the computer chose paper");
  } else if (rdValue == 2 && nbUserChifumi == 0) {
    print("You win, the computer chose scissors");
  } else if (rdValue == 2 && nbUserChifumi == 1) {
    print("You lose, the computer chose scissors");
  } else {
    print("It's a draw");
  }
}
*/
void main() {
  stdout.write("Give me a number \t");
  String? strNumber = stdin.readLineSync();
  int nb = int.tryParse(strNumber ?? '') ?? 0;
  var rdValue = Random().nextInt(100);
  while (nb != rdValue) {
    if (nb < rdValue) {
      print("The computer chose $rdValue, higher than your number");
    } else {
      print("The computer chose $rdValue, lower than your number");
    }
    stdout.write("Give me a number \t");
    strNumber = stdin.readLineSync();
    nb = int.tryParse(strNumber ?? '') ?? 0;
    rdValue = Random().nextInt(100);
  }
  print("The computer chose $rdValue, you found the number");
}
