def caesar_cipher(str, shift = -3)
  # store ascii values of string in variable
  # A-Z == 65 - 90
  # a-z == 97 - 122
  num_values = str.split('').map {|x| x.ord}
  # validate input
  if num_values.between?(65, 90) || num_values.between?(97, 122)
    # create logic for wrapping

  end
  # translate to caesar shift
  # return caesar cipher
  p result
end