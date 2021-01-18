class Brave < Character
    def attack(monster)
      damage = (offense - monster.defense) / 2
      monster.hp = monster.hp - damage
       monster.hp = 0 if monster.hp < 0
      puts "#{name}の攻撃！"
      puts "#{monster.name}に #{damage} のダメージを与えた"
    end
  end