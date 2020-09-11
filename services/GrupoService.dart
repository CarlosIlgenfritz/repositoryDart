import '../models/Grupo.dart';
import '../repository/repository.dart';

class GrupoService {
  Repository<Grupo, int> repository;

  GrupoService(Repository<Grupo, int> repository);

  cadastrar(Grupo grupo) {
    repository.cadastrar(grupo);
  }

  editar(Grupo grupo) {
    if (grupo != null) {
      repository.alterar(grupo);
    }
  }

  List<Grupo> buscarTodos() {
    return repository.buscarTodos();
  }

  Grupo buscaPorId(Grupo grupo) {
    return repository.buscarPorID(grupo.id);
  }
}
