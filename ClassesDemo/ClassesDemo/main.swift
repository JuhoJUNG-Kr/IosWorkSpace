let skeleton = Enemy(health: 100, attackStrength: 10)
print(skeleton.health)
skeleton.move()
skeleton.attack()

let skeleton1 = Enemy(health: 100, attackStrength: 10)
let skeleton2 = Enemy(health: 100, attackStrength: 10)

let dragon = Dragon(health: 1000, attackStrength: 100)
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "Die!!")
dragon.move()
dragon.attack()
