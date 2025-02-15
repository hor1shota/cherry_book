module Rainbowable
  def rainbow
    count = 0
    colored_chars = []

    self
      .to_s
      .each_char do |char|
        color = 31 + count % 6
        colored_chars << "\e[#{color}m#{char}"
        count += 1
      end

    colored_chars
      .push("\e[0m")
      .join
    end
end
