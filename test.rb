def check_head_tag_contents(file)
  error_statement = ''
  head_contents = ["<title>","<meta", "<link","<style>"]
  file_str = file.gsub(/\n|\t/, "")
  upper_limit = file_str =~ (/<head>/)
  lower_limit = file_str =~ (/<\/head>/)

  head_contents.each do |tag|
    if file_str.include?(tag)
      unless (upper_limit..lower_limit).include? (file_str.index(tag))
         error_statement << "place #{tag} in between <head></head>"
      end
    end
  end

  error_statement
end
puts check_head_tag_contents(File.read("index.html"))

def check_doctype(file)
  'add or correct Doctype' unless file.include? '<!DOCTYPE html>'
end
#puts check_doctype([]) == 'add or correct Doctype'
