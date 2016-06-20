
extension Tree {
    
    func isCompletelyBalanced() -> Bool {
        if(isCompletelyBalancedTree() == -1){
            return false
        }
        else{
            return true
        }
    }
    
    
    func isCompletelyBalancedTree() -> Int {
        if(value == nil){
            return 0
        }
        else if(value != nil && left == nil && right == nil){
            return 1
        }
        let ls = left.isCompletelyBalancedTree()
        let rs =  right.isCompletelyBalancedTree()
        
        if(abs(ls-rs)>1 || ls == -1 || rs == -1){
            return -1
        }
        else{
            return ls+rs+1
        }
    }
}