extension List {
    
    func duplicate() -> List {
        
        var temp = nextItem
        var newObject = List(value)
        nextItem = newObject
        newObject.nextItem = temp
        
        
        var current = self.nextItem.nextItem
        
        while(current != nil){
            temp = current.nextItem
            newObject = List(current.value)
            current.nextItem = newObject
            newObject.nextItem = temp
            current = current.nextItem.nextItem
        }
        
        return self
    }
}