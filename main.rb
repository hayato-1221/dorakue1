class Character
  attr_accessor :name, :hp, :offense, :defense
  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end
end
  class Brave < Character
    def attack(monster)
      puts "#{monster.name}があらわれた"
      puts "#{name}の攻撃！"
      puts "#{monster.name}に #{(offense - monster.defense) / 2} のダメージを与えた"
    end

  end
  brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

  class Monster < Character
    def attack(brave)
      puts "#{name}の攻撃！"
      puts "#{brave.name}は #{(offense - brave.defense) / 2} のダメージを受けた"
    end

    while (offense - brave.defense) / 2 do

    end

  end
  monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
  puts brave.attack(monster)
  puts monster.attack(brave)