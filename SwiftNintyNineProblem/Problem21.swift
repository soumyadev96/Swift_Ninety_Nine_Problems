extension List {
    func removeAt(position: Int) -> (rest: List!, removed: T!) {
        
        if position==0{
            
            var head = self
            let current=head
            head=head.nextItem
            current.nextItem=nil
            return (head,current.value)
        }
        var prev: List!
        let head=self
        var current=head
        var index=position
        while index>0{
            prev=current
            current=current.nextItem
            index-=1
        }
        prev.nextItem=current.nextItem
        current.nextItem=nil
        return (head,current.value)
    }
}