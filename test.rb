def check_tags(file)
  error_statement = ''
  file.each_with_index do |element, index|
    arr = element.scan(/<|>/)
    error_statement << "fix tags at line #{index + 1} " unless (arr.length % 2).zero?
  end
  return error_statement
end

#puts check_tags(["<titlemint.com/sign_up</title>"]) == "fix tags at line #{0 + 1} "

def check_lang(file)
  'add your language tag' unless file.include?(/<html lang=\"en\">/)
end

def check_apostrophe(file)
  error_statement = ''
  file.each_with_index do |element, index|
    arr = element.scan(/"|"/)
    error_statement << "fix apostrophe \"\" at line #{index + 1} \n " unless (arr.length % 2).zero?
  end
  return error_statement
end
#puts check_apostrophe(["<a href=\"google.com>I forgot my User ID or Password</a>"]) == "fix apostrophe \"\" at line #{0 + 1} \n "

def check_doctype(file)
  'add or correct Doctype' unless file.include? '<!DOCTYPE html>'
end
puts check_doctype([]) == 'add or correct Doctype'
