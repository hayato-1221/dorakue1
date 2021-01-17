class Brave < Character
    def attack(monster)
      damage = (offense - monster.defense) / 2
      monster.hp = monster.hp - damage
      if monster.hp < 0
        monster.hp = 0
      end
      puts "#{name}の攻撃！"
      puts "#{monster.name}に #{damage} のダメージを与えた"
    end
  end