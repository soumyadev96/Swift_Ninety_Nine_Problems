
class MTree<T> {
    let value: T
    var children: List<MTree<T>>!
    
    init(_ value: T, _ children: List<MTree<T>>? = nil) {
        self.value = value
        self.children = children
    }
}



extension MTree {
    var nodeCount: Int {
        if(self.children == nil){
            return 1
        }
        else{
            var counter = 1
            var current = self.children
            while(current != nil){
                counter = counter + current.value.nodeCount
                current = current.nextItem
            }
            return counter
        }
        
    }
}