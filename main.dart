import 'models/Grupo.dart';
import 'repository/grupoRepository.dart';
import 'repository/repository.dart';
import 'services/grupoService.dart';

main() {
  Grupo grupo = new Grupo();
  grupo.id = 1;
  grupo.descricao = "Amarelo";

  Repository<Grupo, int> repository = new grupoRepository();

  GrupoService grupoService = new GrupoService(repository);

  grupoService.cadastrar(grupo);
}
