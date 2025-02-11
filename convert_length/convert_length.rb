# frozen_string_literal: true

UNIT = { m: 1.00, ft: 3.28, in: 39.37 }.freeze
# m換算した後、指定の単位に変換する
def convert_length(num, from, to)
  (num / UNIT[from] * UNIT[to]).round(2)
end
