class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name  = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    sorted_by_salary = characters.sort_by do |character|
      character.salary
    end
    sorted_by_salary.last.actor
  end

  def payroll
    payees = {}
    characters.each do |character|
      payees[character.actor] = character.salary
    end
    payees
  end

  def characters
    characters = []
    @shows.each do |show|
      show.characters.each do |character|
        characters << character
      end
    end
    characters
  end
end
