module Effects
  def self.reverse
    ->(words) { words.split(' ').map(&:reverse).join(' ') }
  end
end
