# frozen_string_literal: true

# 10進数を16進数に変換
def to_hex(*rgb)
  rgb.sum('#') { |int| int.to_s(16).rjust(2, '0') }
end

# 16進数を10進数に変換
def to_ints(hex)
  hex.chars.drop(1).each_slice(2).map { |ary| ary.join.hex.to_i }
end
