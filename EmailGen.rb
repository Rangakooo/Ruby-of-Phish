require_relative 'PhishGen'
require_relative 'LegitGen'


def generate_email
  flip = rand(1..2)
  if flip == 1
    email = PhishGen.generate_email
    email[:type] = "Phish"
    puts "Phish"
  else
    email = LegitGen.generate_email
    email[:type] = "Legit"
  end
  pp email
end

generate_email