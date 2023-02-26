class Aluno {
  String nome;
  String urlImage;
  String descricao;

  Aluno(this.nome, this.urlImage, this.descricao);

  static List<Aluno> exemplos = [
    Aluno(
        "Brian",
        "https://conteudo.imguol.com.br/c/entretenimento/05/2018/07/26/paul-walker-nos-bastidores-de-velozes--furiosos-1532648841040_v2_1x1.jpg",
        "Seu carro preferido é o nissan skyline"),
    Aluno(
        "Conner",
        "https://cdn.motor1.com/images/mgl/QyprZ/s1/daughter-of-paul-walker-suing-porsche-over-his-death.jpg",
        "já foi um policial compentente."),
    Aluno(
        "Paul",
        "https://musicaecinema.com/wp-content/uploads/2023/02/14.02-paul-walker.jpg",
        "Seu amigo e braço direito é o Toretto."),
    Aluno(
        "Walker",
        "https://i.pinimg.com/originals/bf/b9/0a/bfb90a0d39c4e0e1eb95be3be104d42d.jpg",
        "Hoje faz parte do bando do Toretto"),
  ];
}
