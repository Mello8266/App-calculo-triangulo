class AreaTriangulo{
  // Atributos
  double base;
  double altura;

  // Método
  String calcArea(base, altura){
    var area = base * altura / 2;
    return area.toStringAsFixed(2);
  }

  // Construtor
  AreaTriangulo(this.base, this.altura);

  // Setters
  void setBase(base){
    this.base = base;
  }
  void setAltura(altura){
    this.altura = altura;
  }

  // Getters
  double getBase(){
    return base;
  }
  double getAltura(){
    return altura;
  }
}