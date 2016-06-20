extension Tree {
    func nodesAtLevel(level:Int) -> List<T> {
     var Arr = [T]()
     Arr = nodesAtLevelShadow(level,Arr:Arr)
     return List(Arr)
    }
    
    func nodesAtLevelShadow(var level:Int,var Arr:[T])->[T]!{
        if level == 1{
        Arr.append(self.value!)
        return Arr
        }
        level--
        if self.left != nil{
            Arr = left.nodesAtLevelShadow(level,Arr:Arr)
        }
        if self.right != nil{
            Arr = right.nodesAtLevelShadow(level,Arr:Arr)
        }
        return Arr
    }
}