# Sessie 4
Gebruik van UIView

## Doel
Losse elementen toevoegen aan schermen.

## Opzet

Opzet:


Delegate en protocol


# Demo 1
UIView maken verschillende kleuren. Toevoegen aan standaard controller

# Demo 2
class NumberView: UIView {
    override init (frame : CGRect) {
        super.init(frame : frame)
        addControls()
    }
        
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addControls (){
        self.setTranslatesAutoresizingMaskIntoConstraints(false)
    }
    
    private var nn : Int = 0
    var number : Int {
        set {
            self.backgroundColor = UIColor(patternImage: UIImage (named: "number\(newValue)"))
            nn = newValue
        }
        get {
            return nn
        }
    }
    
}       


Button:

let b = UIButton (frame: CGRectMake(0,0,200,200))
b.setTitle("Hoi", forState: UIControlState.Normal)


