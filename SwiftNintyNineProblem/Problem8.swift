extension LinkedList{
 func compress(){
        var prev:LLNode! = Head 
        var current:LLNode! = Head.nextNode
        while(current != nil){
            if prev.key == current.key {
                current = current.nextNode
                prev.nextNode =  prev.nextNode.nextNode
            }
            else{
                prev = current
                current = current.nextNode
            }
        }
    }
}