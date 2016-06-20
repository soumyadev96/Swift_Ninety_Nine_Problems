extension LinkedList{
    func isPalindrome()->Bool{
        var low = 0
        var high = self.length-1
        while(low <= high){
            if(self[low] != self[high]){
                return false
            }
            low++
            high--
        }
        return true
    }
}