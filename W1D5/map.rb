require 'byebug'
class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    match = []
    @map.each do |el|
      match = el if el[0] == key
    end
    @map[@map.index(match)][1] = value if !match.empty?
    @map << [key, value] if match.empty?
  end

  def lookup(key)
    match_value = nil
    @map.each do |pair|
      match_value = pair[1] if pair[0] == key
    end
    match_value
  end

  def remove(key)
    match = []
    @map.each do |pair|
      match = pair if pair[0] == key
    end
    @map.delete(match)
  end

  def show
    copy = []
    @map.each do |x|
      next if !x.is_a?(Array)
      copy << x
    end
    copy
  end
end
