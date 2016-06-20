class MTreee {
    var value: Character
    var children: List<MTreee>!
    init( inout _ string: String){
        string =  String(string)
        var  firstCharacter = string.removeAtIndex(string.startIndex)
        self.value = firstCharacter
        self.children = nil
        while( true ){
            if string.isEmpty {
                return
            }
            firstCharacter = string.removeAtIndex(string.startIndex)
            if firstCharacter == "^"  {
                return
            }
            else{
                
                if self.children == nil {
                    string = "\(firstCharacter)"+string
                    self.children = List(MTreee(&string))
                }
                else{
                    var  current = self.children
                    while current.nextItem != nil{
                        current = current.nextItem
                    }
                    string = "\(firstCharacter)"+string
                    current.nextItem = List(MTreee(&string))
                }
            }
        }
        
        
    }
}
