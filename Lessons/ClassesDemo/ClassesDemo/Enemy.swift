
class Enemy {
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        
        self.health  = health
        self.attackStrength = attackStrength
    }
    
    func move() {
        print("Walk Forwards.")
    }
    
    func attack(){
        print("Land a hit, does \(attackStrength)")
    }
    
    func setHealth(health: Int) {
        self.health = health
    }
    
    func setAttackStrength(attackStrength: Int) {
        self.attackStrength = attackStrength
    }
}
