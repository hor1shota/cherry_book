# frozen_string_literal: true

class Gate
  attr_accessor :name

  STATIONS = %i[umeda juso mikuni].freeze
  FARES = { 1 => 160, 2 => 190 }.freeze

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(name)
  end

  def exit?(ticket)
    distance = calculate_distance(ticket)
    fare = FARES[distance]
    ticket.fare >= fare
  end

  private

  def calculate_distance(ticket)
    from = ticket.name
    to = name
    STATIONS.index(to) - STATIONS.index(from)
  end
end
