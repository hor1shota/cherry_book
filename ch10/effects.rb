module Effects
  def self.reverse
    ->(words) { words.split(' ').map(&:reverse).join(' ') }
  end

  def self.echo(cnt)
    ->(words) do
      words
        .each_char
        .map { |char| char == ' ' ? char : char * cnt }
        .join
    end
  end

  def self.loud(cnt)
    ->(words) do
      words
        .split(' ')
        .map{ |word| word.upcase + '!' * cnt }
        .join(' ')
    end
  end
end
