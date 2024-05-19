import 'package:bloc/bloc.dart';
import 'package:nossa_listinha/domain/entities/item.dart';
import 'package:nossa_listinha/domain/repositories/item_repository.dart';
import 'package:nossa_listinha/presentation/blocs/events.dart';
import 'package:nossa_listinha/presentation/blocs/states.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final ItemRepository _repository;

  ItemBloc(this._repository) : super(InitialLoading()) {
    on<ListenEvent>((event, emit) async {
      emit(InitialLoading());
      try {
        await emit.forEach<List<Item>>(
          _repository.listen(),
          onData: (items) => InitialLoaded(items),
          onError: (_, __) => ItemError('Erro ao carregar itens'),
        );
      } catch (_) {
        emit(ItemError('Erro ao carregar itens'));
      }
    });

    on<CheckEvent>((event, emit) async {
      // TODO
    });
  }
}
