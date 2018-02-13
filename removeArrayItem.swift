var carColourToRemove = "Red"

if let index = carArray.index(where:{$0.carColour == carColourToRemove){
  carArray.remove(at: index)
  }
