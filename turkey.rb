require "#{File.dirname(__FILE__)}/animal"

class Turkey < Animal
  def gobble_speak (input)
    input.gsub(/\b([A-Z][A-Za-z]*(?= |[.]))/, 'Gobble').gsub(/Don't/,'Gobb\'le').gsub(/(?<= )([a-z]+)\b/,'gobble')
  end

end