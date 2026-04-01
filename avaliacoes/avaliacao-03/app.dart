import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    _nome = nome;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
    };
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    _nome = nome;
    _dependentes = dependentes;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((d) => d.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeProjeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeProjeto;
    _funcionarios = funcionarios;
  }

  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((f) => f.toJson()).toList(),
    };
  }
}

void main() {
  var dep1 = Dependente("Ana");
  var dep2 = Dependente("Carlos");
  var dep3 = Dependente("Marina");

  var func1 = Funcionario("João", [dep1, dep2]);
  var func2 = Funcionario("Maria", [dep3]);

  var funcionarios = [func1, func2];

  var equipe = EquipeProjeto("Sistema Financeiro", funcionarios);

  String json = jsonEncode(equipe.toJson());
  print(json);
}