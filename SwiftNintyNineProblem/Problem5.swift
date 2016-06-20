extension LinkedList{
    func reverse(){
        var current2ndElement:LLNode! = Head
        var current1stElement:LLNode! = Head.nextNode
        current2ndElement.nextNode = nil
        var temp:LLNode!
        while(current1stElement != nil){
            temp = current1stElement.nextNode
            current1stElement.nextNode = current2ndElement
            current2ndElement = current1stElement
            current1stElement = temp
        }
        Head = current2ndElement
    }
}