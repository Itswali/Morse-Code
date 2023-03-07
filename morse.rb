class MorseCodeDecoder
  MORSE_CODE_TABLE = {
    ".-" => "A",   "-..." => "B",  "-.-." => "C",  "-.." => "D",
    "." => "E",    "..-." => "F",  "--." => "G",   "...." => "H",
    ".." => "I",   ".---" => "J",  "-.-" => "K",   ".-.." => "L",
    "--" => "M",   "-." => "N",    "---" => "O",   ".--." => "P",
    "--.-" => "Q", ".-." => "R",   "..." => "S",   "-" => "T",
    "..-" => "U",  "...-" => "V",  ".--" => "W",   "-..-" => "X",
    "-.--" => "Y", "--.." => "Z",  "-----" => "0", ".----" => "1",
    "..---" => "2","...--" => "3","....-" => "4", "....." => "5",
    "-...." => "6","--..." => "7","---.." => "8", "----." => "9"
  }

  def self.decode_char(morse)
    MORSE_CODE_TABLE[morse]
  end

  def self.decode_word(word_morse)
    word_morse.split.map { |morse| decode_char(morse) }.join
  end

  def self.decode(message)
    message.split("   ").map { |word| decode_word(word) }.join(" ")
  end
end
