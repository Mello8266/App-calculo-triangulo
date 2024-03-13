class Triangulo{
  // Atributos
  double base;
  double altura;

  // Método
  double calcArea(base, altura){
    return base * altura / 2;
  }

  // Construtos
  Triangulo(this.base, this.altura);

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