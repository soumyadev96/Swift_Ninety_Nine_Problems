class Tree<T> {
    let value: T!
    var left: Tree<T>!
    var right: Tree<T>!
    
    init(_ value: T, _ left: Tree<T>! = nil, _ right: Tree<T>! = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

extension Tree {
    var leafCount: Int {
        if self.left == nil && self.right == nil{
            return 1
        }
        else{
            if self.left == nil{
                return right.leafCount
            }
            if self.right == nil{
                return left.leafCount
            }
            return left.leafCount + right.leafCount
        }
    }
}


