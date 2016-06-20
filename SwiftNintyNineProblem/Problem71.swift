extension MTree {
    var internalPathLength: Int{
        return internalPathLengthShadow.1 - internalPathLengthShadow.0
    }
    
    var internalPathLengthShadow: (Int,Int) {
        if(self.children == nil){
            return (1,1)
        }
        else{
            var childNodeCounter = 0
            var totalPath = 0
            var current = self.children
            while(current != nil){
                childNodeCounter = childNodeCounter + current.value.internalPathLengthShadow.0
                totalPath = totalPath + current.value.internalPathLengthShadow.1
                current = current.nextItem
            }
            return (childNodeCounter+1,totalPath+childNodeCounter+1)
        }
        
    }
}