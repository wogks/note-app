import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:note_app/core/extensions.dart';

void main() {
  const text = '<<<First Grade>>>';
  test('last()는 마지막 문자를 반환하는 테스트', () {
    expect(text.last(), '>');
  });

  test('isLetter()는 한 문자가 글자인지 아닌지 판별한다', () {
    expect(text[0].isLetter(), false);
    expect(text[3].isLetter(), true);
    expect(text[8].isLetter(), false);
    expect(text.last().isLetter(), false);
  });

  test('dropLast()는 마지막 문자를 제거한다', () {
    expect(text.dropLast(), '<<<First Grade>>');
  });

  test('count()는 주어진 조건을 만족하는 갯수를 반환한다', () {
    expect(text.count((ch) => ch == '<'), 3);
    expect(text.count((ch) => ch == '>'), 3);
  });

  test('takeLast()는 뒤에 n개의 문자를 반환한다.', () {
    expect(text.takeLast(8), 'Grade>>>');
  });

  test('takeWhile(조건)은 조건에 맞는 연속되는 문자열을 앞에서부터 찾아서 반환한다.', (){
    expect(text.takeWhile((ch) => ch == '>'), '>>>');
  });
}
