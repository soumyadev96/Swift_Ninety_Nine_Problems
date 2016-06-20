extension LinkedList{
    subscript(Index:Int)->Int{
        var current:LLNode! = Head
        var counter = 0
        while(counter != Index && current.nextNode != nil){
            counter++
            current = current.nextNode
        }
        return current.key
    }
}