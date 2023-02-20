def caesar_cipher(str, shift = 3)
  # store ascii values of string in variable
  # A-Z == 65 - 90
  # a-z == 97 - 122
  ascii_values = str.split('').map {|x| x.ord}
  # validate input
  # create logic for wrapping
  # translate to caesar shift
  # return caesar cipher
end