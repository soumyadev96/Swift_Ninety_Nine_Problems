extension MTree {
    func postOrder() -> List<T> {
        let head = List(self.value)
        if(self.children == nil){
            return head
        }
        else{
            var currentChild = self.children
            var currentList:List<T>!
            var   listHead:List<T>!
            while(currentChild != nil){
                if currentList == nil{
                    currentList =  currentChild.value.postOrder()
                    listHead = currentList
                }
                else{
                     currentList.nextItem = currentChild.value.postOrder()
                }
                currentChild = currentChild.nextItem
                while currentList.nextItem != nil{
                currentList = currentList.nextItem
                }
            }
            currentList.nextItem = head
            return listHead
        }
    }
}