def check_tags(file)
  error_statement = ''
  file.each_with_index do |element, index|
    arr = element.scan(/<|>/)
    error_statement << "fix tags at line #{index + 1} " unless (arr.length % 2).zero?
  end
  return error_statement
end

#print check_tags([]).class == String

def check_apostrophe(file)
  error_statement = ''
  file.each_with_index do |element, index|
    arr = element.scan(/"|"/)
    error_statement << "fix apostrophe \"\" at line #{index + 1} \n " unless (arr.length % 2).zero?
  end
  return error_statement
end
print check_apostrophe([]).class == String
