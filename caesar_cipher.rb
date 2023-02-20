def caesar_cipher(str, shift = 3)
  # store ascii values of string in variable
  # A-Z == 65 - 90
  # a-z == 97 - 122
  num_values = str.split('').map {|chr| chr.ord}
  # encrypt the string
  encrypt = num_values.map do |char|
    # validate input
    if char.between?(65, 90)
      # wrap input & calculate
      if shift >= 0 
        char + shift > 90 ? (char + shift) - 26 : char + shift
      else
        char + shift < 65 ? (char + shift) + 26 : char + shift
      end
    elsif char.between?(97, 122)
      # wrap input & calculate
      if shift >= 0
        char + shift > 122 ? (char + shift) - 26 : char + shift
      else
        char + shift < 97 ? (char + shift) + 26 : char + shift
      end
    else
      # allow punctuation and other characters
      char
    end
  end
  encrypted_str = encrypt.map! {|int| int.chr}.join
  # return encrypted string
  p encrypted_str
  return encrypted_str
end