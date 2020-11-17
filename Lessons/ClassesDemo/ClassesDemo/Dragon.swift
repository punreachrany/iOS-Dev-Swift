
class Dragon: Enemy {
    
    var wingSpan: Int
    
    init(wingSpan: Int, health: Int,attackStrength: Int) {
        self.wingSpan = wingSpan
        super.init(health: health, attackStrength: attackStrength)
    }
    
    func talk(speech: String) {
        print("Says : \(speech)")
    }
    
    override func move() {
        print("Fly foward")
    }
    
    override func attack() {
        super.attack()
        print("Spit fire, does 10 demage")
    }
    
}
