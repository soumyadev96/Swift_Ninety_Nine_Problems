extension List {
    func randomPermute() -> List {
        var current=self
        let removingIndex=0
        var count = 0
        while current.nextItem != nil{
            count++
            current = current.nextItem
        }
        current=self

        let tuple=current.removeAt(removingIndex)
        var newList=List(tuple.removed)
        let headNewList=newList
        current=tuple.rest
        count-=1
        while count>1{
            let tuple=current.removeAt(removingIndex)
            let tempList=List(tuple.removed)
            current=tuple.rest
            newList.nextItem=tempList
            newList=newList.nextItem
            count--
            
        }
        newList.nextItem = List(current.value)
        return headNewList
    }
}