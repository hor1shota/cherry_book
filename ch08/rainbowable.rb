module Rainbowable
  def rainbow
    color = 31

    self
      .to_s
      .chars
      .map
      .with_index { |char, idx| "\e[#{color + idx % 6}m#{char}" }
      .push("\e[0m")
      .join
  end
end
