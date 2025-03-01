import 'dart:io';

void solicitarCategoria() {
  var categoriasValidas = {"eletrônicos", "alimentos", "vestuário", "livros"};


  //Onde aparecerar no terminal a seleção ao lado do produto
  while (true) {
    stdout.write("Digite categoria esse produtos(eletrônicos, alimentos, vestuário, livros): ");
    String? categoria = stdin.readLineSync()?.trim().toLowerCase();

    //Onde era para aparecer a categoria valida ou invalida?
    if (categoria != null && categoriasValidas.contains(categoria)) {
      print(categoria);
      break;
    } else {
      print("Categoria valida: $categoria");
    }
  }
}

// Exemplo de uso
void main() {
  solicitarCategoria();
}
