module Effects
  def self.reverse
    ->(words) { words.split(' ').map(&:reverse).join(' ') }
  end

  def self.echo(cnt)
    ->(words) do words
      .split(' ')
      .map { |word| repeat_chars(word, cnt) }
      .join(' ')
    end
  end

  def self.repeat_chars(word, cnt)
    word
      .chars
      .map { |char| char * cnt }
      .join
  end

  private_class_method :repeat_chars
end
