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
    def attack
      puts "#{name}の攻撃！"

    end

  end
  brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

  class Monster < Character
    def attack

    end

  end
  monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)