import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'dart:collection';
import 'package:collection/collection.dart';
import '../models/contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const Initial([])) {
    on<SaveContact>((event, emit) async {
      //set state loading
      emit(Loading(state.contacts));
      await Future.delayed(
        const Duration(
          seconds: 2,
        ),
      );
      //cek duplikasi contact
      final isExistingContact = state.contacts.firstWhereOrNull(
          (element) => element.number == event.contact.number);

      //tidak ada duplikasi
      if (isExistingContact == null) {
        var isExistingContact = [...state.contacts];
        isExistingContact.add(event.contact);
        emit(Loaded(isExistingContact));
      }
      //ada duplikasi set state failed
      else {
        emit(Failed(state.contacts));
      }
    });

    on<Reload>(
      (event, emit) async {
        emit(Loading(state.contacts));
        await Future.delayed(
          const Duration(
            seconds: 1,
          ),
        );
        emit(Loaded(state.contacts));
      },
    );
  }
}
