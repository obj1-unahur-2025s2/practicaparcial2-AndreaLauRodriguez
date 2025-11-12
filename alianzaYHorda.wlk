
class Personaje{
 var property fuerza
  var property inteligencia
  var property rol
  method esInteligente()
  method cambiarRol(unRol){
    rol = unRol
  }
  method potencialOfensivo(){
     return fuerza * 10
  }
  method esGroso(){
    return self.esInteligente() or rol.esGroso(self)
    // ver si no va rol.esGroso(self)
  }
}
class Horco inherits Personaje{
  
    override method potencialOfensivo(){
        return (super() + rol.potencialOfensivo()) * 1.1
    }
    

}

class Humano inherits Personaje{
   
  override method potencialOfensivo(){
        return super() + rol.potencialOfensivo()
    }
     
}

object guerrero{
    method potencialOfensivo(){
        return 100
    }
    method esGroso(unPersonaje){
        return unPersonaje.Fuerza() > 50
    } 
}

object  cazador{
  var mascotaCazador = null
   method agregarMascota(unaMascota){
      mascotaCazador = unaMascota
   } 
   method potencialOfensivo(){
        return 
    }
   method esGroso(unPersonaje){

    }
}

object brujo{
    method potencialOfensivo(){
        return 0
    }
     method esGroso(unPersonaje){

    }
}

class Mascota{
    var property edad
    const property tieneGarras
    const property fuerza
    
    method actualizarEdad(){
        edad = edad +1
    }

}

object laHorda{
   const integrantesHorda = []
   method agregarIntegrante(unHorco){
    integrantesHorda.add(unHorco)
   }
   method sacarIntegrante(unHorco){
    integrantesHorda.remove(unHorco)
   }
}

object laAlianza {
  const integrantesAlianza = []
   method agregarIntegrante(unHumano){
    integrantesAlianza.add(unHumano)
   }
   method sacarIntegrante(unHumano){
    integrantesAlianza.remove(unHumano)
   }
}

class Localidad{
   method cantidadHabitantes()
}

class Aldea inherits Localidad{
  var property cantidadHabitantes
  const property tamaño
  method  cantidadMaxHab(){
     return 
  }
}

class Ciudad inherits Localidad{
  var property cantidadHabitantes
  const property tamaño
}