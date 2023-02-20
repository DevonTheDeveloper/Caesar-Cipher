def caesar_cipher(str, shift = -3)
  # store ascii values of string in variable
  # A-Z == 65 - 90
  # a-z == 97 - 122
  num_values = str.split('').map {|x| x.ord}
  encrypt = num_values.map do |char|
    # validate input
    if char.between?(65, 90) || char.between?(97, 122)
        char + shift
    else
      return
    end
  end
  # return caesar cipher
  return encrypted_str
end
