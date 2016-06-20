class LLNode{
    var key:Int!
    var nextNode:LLNode!
}

class LinkedList{
    
    var Head:LLNode!
    func insert(key:Int){
        
        if(Head == nil){
            Head = LLNode()
            Head.key = key
            Head.nextNode = nil
        }
        else{
            var current:LLNode! = Head
            while(current.nextNode != nil){
                current = current.nextNode
            }
            
            current.nextNode = LLNode()
            current.nextNode.key = key
            current.nextNode.nextNode = nil
        }
    }
    
    
    
}

extension LinkedList{
    var last:Int{
        var current:LLNode! = Head
        while(current.nextNode != nil){
            current = current.nextNode
        }
        return current.key
    }
}