require './lib/error_checks.rb'
require './lib/html_validator.rb'

class Main
  def run_linter
    puts "please save to directory and enter html file name correctly"
    file = gets.chomp
    Linter.new(file).run_all_checks
    #puts "Hello #{file}"
  end
end
Main.new.run_linter
