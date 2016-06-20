extension Int {
func isCoprimeTo(other: Int) -> Bool {

var a = Int(value)
var b = other
while(a != b){
if(a>b){
a = a-b
}
else{
b = b-a
}
}

return a == 1
}
}

