public class List<T> {
    var value: T!
    var nextItem: List<T>!
    
    public convenience init!( _ values: T...) {
        self.init(Array(values))
    }
    
    init!(var _ values: Array<T>) {
        if values.count == 0 {
            return nil
        }
        value = values.removeAtIndex(0)
        nextItem = List(values)
    }
}
public class ListofEncodeList<T> {
    var value: (Int,T)!
    var nextItem: List<(Int,T)>!
    
    public convenience init!( _ values: (Int,T)...) {
        self.init(Array(values))
    }
    
    init!(var _ values: Array<(Int,T)>) {
        if values.count == 0 {
            return nil
        }
        value = values.removeAtIndex(0)
        nextItem = List(values)
    }
}


extension List where T: Equatable {
    func encode() -> ListofEncodeList<T>! {
        var tempArray = [(Int,T)]()
        let currentOuter1 = self.pack()
        var count = 1
        var current = currentOuter1.value.nextItem
        while( current != nil){
            count++
            current = current.nextItem
        }
        tempArray.append((count,currentOuter1.value.value))
        var currentOuter = self.pack().nextItem
        while(currentOuter != nil){
            
            var count = 1
            var current = currentOuter.value.nextItem
            while( current != nil){
                count++
                current = current.nextItem
            }
            tempArray.append((count,currentOuter.value.value))
            currentOuter = currentOuter.nextItem
        }
        
        
        return ListofEncodeList(tempArray)
    }
}