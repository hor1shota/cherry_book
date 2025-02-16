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
end
