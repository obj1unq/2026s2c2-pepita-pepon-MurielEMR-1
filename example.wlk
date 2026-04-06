object pepita{
  var energia = 100
  
  method energia(){
    return energia
  }
  method energia(_energia){
    energia = _energia
  }
  method volar(metros){
    energia = energia - 10 - metros/10
  }
  method descansar(){
    energia = energia + 10
  }
  method cansada(){
    return energia < 30
  }
  method comer(comida){
    energia = energia + comida.energiaQueAporta()
  }
}
object alpiste{
  method energiaQueAporta(){
    return 25
  }
}

object manzana{
  const base = 20
  var madurez = 1
  method madurar(){
    madurez = madurez + 1
  }
  method inmadurar(){
    madurez=madurez-1
  }
  method estaPodrido(){
    return madurez >= 3
  }
  method energiaQueAporta(){
    if(self.estaPodrido()){
      return base*0
    }
    else return base*madurez
  }
}

object pepon{
  var energia = 30
  method energia(){
    return energia
  }
  method comer(comida){
    energia = energia + (comida.energiaQueAporta() /2)
  }
  method volar(kilometros){
    energia = energia -(20 + 2*kilometros)
  }
  method cansada(){
    return energia <34
  }
}

object rebeca {
  var ave = pepita
  var cenas = 0
  method ave(){
    return ave
  }
  method ave(_ave){
    ave = _ave
    cenas = 0
  }
  method alimentar(comida){
    ave.comer(comida)
    cenas = cenas + 1
  }

  method cenas(){
    return cenas
  }
}

