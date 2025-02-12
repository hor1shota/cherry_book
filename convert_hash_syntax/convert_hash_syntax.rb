# frozen_string_literal: true

# ハッシュの形式を{ key: value }に置換する
def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+)\s*=>\s*(.+)/) do
    "#{$1}: #{$2}"
  end
end
