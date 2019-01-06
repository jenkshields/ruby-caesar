def caesar_cipher(string, shift)

  new_string = string.split("").map do |char|
    if char.match(/[A-Z]/)
      char_num = (((char.ord - "A".ord) + shift) % 26 + "A".ord).chr
    elsif char.match(/[a-z]/)
      char_num = (((char.ord - "a".ord) + shift) % 26 + "a".ord).chr
    else
      char
    end
  end
  return new_string.join()
end

puts caesar_cipher("Hello, world!", -200)