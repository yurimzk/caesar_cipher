def caesar_cipher(string, shift)
  encrypted_string = ""

  string.each_char do |char|
    if char =~ /[A-Za-z]/
      base = char.ord < 91 ? 65 : 97
      new_char = ((char.ord - base + shift) % 26 + base).chr
      encrypted_string += new_char
    else
      encrypted_string += char
    end
  end
  encrypted_string
end
