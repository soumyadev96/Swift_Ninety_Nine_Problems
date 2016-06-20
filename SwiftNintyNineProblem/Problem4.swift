extension LinkedList{
    var length:Int{
        var current:LLNode! = Head
        var counter = 0
        while(current != nil){
            counter++
            current = current.nextNode
        }
        return counter
    }
}