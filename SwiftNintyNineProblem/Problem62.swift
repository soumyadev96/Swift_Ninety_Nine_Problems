extension Tree {
    func internalNodes() -> List<T>! {
        if self.left == nil && self.right == nil{
            return nil
        }
        var listHead:List<T>!
        if self.left != nil || self.right != nil{
            if self.left != nil{
            listHead = self.left.internalNodes()   
            }
                if listHead == nil{
                    listHead = List(self.value)
                }
                else{
                    var current = listHead
                    while current.nextItem != nil{
                        current = current.nextItem
                    }
                    current.nextItem = List(self.value)
                }
            
            if self.right != nil{
                    var current = listHead
                    while current.nextItem != nil{
                        current = current.nextItem
                    }
                    current.nextItem = self.right.internalNodes()
            }
             
        }
        return listHead
    }
}
