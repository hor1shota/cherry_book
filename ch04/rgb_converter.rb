# frozen_string_literal: true

# 10進数を16進数に変換
def to_hex(*rgb)
  rgb.sum('#') { |int| int.to_s(16).rjust(2, '0') }
end

# 16進数を10進数に変換
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
