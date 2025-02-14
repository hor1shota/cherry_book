# frozen_string_literal: true

class Ticket
  attr_reader :fare, :name

  def initialize(fare)
    @fare = fare
  end

  def stamp(name)
    @name = name
  end
end
