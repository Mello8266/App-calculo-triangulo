class AreaTriangulo{
  // Atributos
  late double _base;
  late double _altura;

  // Método
  String calcArea(){
    var area = _base * _altura / 2;
    return '${area.toStringAsFixed(2)} cm';
  }

  // Setters
  void setBase(base){
    _base = base;
  }
  void setAltura(altura){
    _altura = altura;
  }

  // Getters
  double getBase(){
    return _base;
  }
  double getAltura(){
    return _altura;
  }
}