import UIKit


class Test1
{
    var name:String
    var ref:Test2? = nil
    init(name:String)
    {
        self.name = name
    }
    deinit
    {
        print("Test1已经被销毁")
    }
}

class Test2
{
    var name:String
    weak var ref:Test1? = nil
    init(name:String,ref:Test1)
    {
        self.name = name
        self.ref = ref
    }
    deinit
    {
        print("Test2已经被销毁")
    }
}

var test1:Test1? = Test1(name: "A")
var test2: Test2? = Test2(name: "b", ref: test1!)

test1!.ref = Test2(name: "b",ref: test1!)
//
//test1!.ref = nil

test1 = nil

print(test2!.name)
test2 = nil


