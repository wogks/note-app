extension StringExt on String {
  String last() {
    return substring(length - 1);
  }

  bool isLetter() {
    return contains(RegExp(r'[A-Za-z]'));
  }

  String dropLast() {
    return substring(0, length - 1);
  }

  // int count(bool Function(String ch, String text) fun) {
  //   String ch = '';
  //   ch.allMatches(text).length);
  // }

  int count(bool Function(String ch) function) {
    int check = 0;
    for (int i = 0; i < length; i++) {
      if (function(this[i])) {
        check++;
      }
    }
    return check;
  }

  String take(int n) {
    String result = '';
    result = this.substring(0, n);
    return result;
  }

  String takeLast(int n) {
    if (n > length) {
      return this;
    } else {
      return substring(length - n);
    }
  }

  String takeWhile(bool Function(String ch) function) {
    String result = '';
    bool isStart = false;
    for (int i = 0; i < length; i++) {
      if (function(this[i]) && !isStart) {
        result = result + this[i];
        isStart = true;
      } else if (function(this[i]) && isStart) {
        result = result + this[i];
      } else if (!function(this[i]) && !isStart) {
      } else {
        break;
      }
    }
    return result;
  }
}
