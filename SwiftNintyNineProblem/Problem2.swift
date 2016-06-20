extension LinkedList{
    var pennultimate:Int{
        var current:LLNode! = Head
        while(current.nextNode.nextNode != nil){
            current = current.nextNode
        }
        return current.key
    }
}