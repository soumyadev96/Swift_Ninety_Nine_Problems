extension Tree {
    func leaves() -> List<T> {
     if self.right == nil && self.left == nil{
         return List(self.value)
     }
     var listHead:List<T>!
     if self.left != nil {
         listHead = self.left.leaves()
     }
     if self.right != nil{
         if listHead == nil{
             listHead = self.right.leaves()
         }
         else{
             var current = listHead
             while current.nextItem != nil {
                 current = current.nextItem
             }
             current.nextItem = self.right.leaves()
         }
     }
     return listHead
    }
}