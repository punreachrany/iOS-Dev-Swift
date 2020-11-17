
let skeleton = Enemy(health: 10, attackStrength: 100)

print(skeleton.health)

skeleton.setHealth(health: 200)

print(skeleton.health)

let dragon = Dragon(wingSpan: 5, health: 10, attackStrength: 500)

dragon.attack()
print(dragon.wingSpan)

dragon.wingSpan = 50
print(dragon.wingSpan)

dragon.move()

dragon.talk(speech: "My Teeth are swords! My claws are spears! My wings are cool")
