def middle_letter(str)
  half = str.length / 2
  str.length % 2 == 0 ? str[half - 1] + str[half] : str[half]
end
