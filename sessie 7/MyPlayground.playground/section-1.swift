// Playground - noun: a place where people can play

import UIKit

class MyView: UIView {
    override init (frame : CGRect) {
        super.init(frame : frame)
        addBehavior()
    }

    convenience override init () {
        self.init(frame:CGRectZero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func addBehavior (){
        println("Bla")
    }
}


//let v=MyView()

let u = MyView(frame: CGRectZero)
let v = MyView()


