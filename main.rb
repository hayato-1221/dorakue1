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
      puts "#{monster.name}に 163 のダメージを与えた"
    end

  end
  brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

  class Monster < Character
    def attack(brave)
      puts "#{name}の攻撃！"
      puts "#{brave.name}は 76 のダメージを受けた"
    end

  end
  monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
  puts brave.attack(monster)
  puts monster.attack(brave)