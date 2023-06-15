@morse_code = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
  '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
  '-----' => '0'
}

def decode_char(str)
  @morse_code[str]
end
puts decode_char('.-')

def decode_word(str)
  word = ''
  collection = str.split
  collection.each { |i| word += decode_char(i) }
  word
end
puts decode_word('-- -.--')

def decode(str)
  message = ''
  collection = str.split('   ')
  collection.each do |i|
    message += "#{decode_word(i)} "
  end
  message
end
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
