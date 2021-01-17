require "./character.rb"
require "./brave.rb"
require "./monster.rb"

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
puts "#{monster.name}があらわれた"
while monster.hp > 0 && brave.hp > 0 do
  brave.attack(monster)
  monster.attack(brave)
  puts <<~TEXT 
  *=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP:#{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*
  #{monster.name}をやっつけた
  TEXT
end