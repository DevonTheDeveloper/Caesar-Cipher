def caesar_cipher(str, shift = -3)
  # store ascii values of string in variable
  # A-Z == 65 - 90
  # a-z == 97 - 122
  num_values = str.split('').map {|x| x.ord}
  # encrypt the string
  encrypt = num_values.map do |char|
    # validate input
    if char.between?(65, 90) || char.between?(97, 122)
      # wrap input & calculate
      char + shift > 90 || char + shift > 122 ? (char + shift) - 26 : char + shift
    else
      return
    end
  end
  encrypted_str = encrypt.map! {|x| x.chr}.join
  # return encrypted string
  return encrypted_str
end