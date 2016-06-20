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



public class ListofList<T> {
    var value: List<T>!
    var nextItem: List<List<T>>!
    
    public convenience init!( _ values: List<T>...) {
        self.init(Array(values))
    }
    
    init!(var _ values: Array<List<T>>) {
        if values.count == 0 {
            return nil
        }
        value = values.removeAtIndex(0)
        nextItem = List(values)
    }
}



extension List where T: Equatable {
    func pack() -> ListofList<T>! {
        var current = nextItem
        var currentString = nextItem.value
        current = current.nextItem
        var currentSubList:List<T>
        var tempArray = [T]()
        var tempListArray = [List<T>]()
        tempArray.append(currentString)
        while(current != nil){
            if(current.value == currentString){
                tempArray.append(current.value)
            }
            if(current.value != currentString || current.nextItem == nil)
            {
                currentSubList = List(tempArray)
                tempListArray.append(currentSubList)
                tempArray.removeAll()
                tempArray.append(current.value)
                currentString = current.value
            }
            current = current.nextItem
        }
        return ListofList(tempListArray)
        
    }
}

