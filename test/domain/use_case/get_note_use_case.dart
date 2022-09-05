import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:note_app/domain/model/my_note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/get_note_use_case.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';

import 'get_note_use_case.mocks.dart';


@GenerateMocks([NoteRepository])
void main () {
  test('정렬기능이 잘 동작해야 한다', () async {
    final repository = MockNoteRepository();
    final getNotes = GetNoteUseCase(repository);
    //동작 정의
    when(repository.getNotes()).thenAnswer((_) async => [
      MyNote(title: 'title', content: 'content', color: 1, timestamp: 0,),
      MyNote(title: 'title', content: 'content', color: 2, timestamp: 2,)
    ]);


  });
}