module ReportsHelper
  def indent(text, level = 1, count = 2)
    spaces = ' ' * count * level
    text.each_line.map {|line| line.chomp.empty? ? line : spaces + line }.join
  end
end
