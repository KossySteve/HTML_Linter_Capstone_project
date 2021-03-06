module Checks
  def check_tags(file)
    error_statement = ''

    file.each_with_index do |element, index|
      arr = element.scan(/<|>/)
      error_statement << "fix tags at line #{index + 1} " unless (arr.length % 2).zero?
    end

    error_statement
  end

  def check_apostrophe(file)
    error_statement = ''

    file.each_with_index do |element, index|
      arr = element.scan(/"|"/)
      error_statement << "fix apostrophe \"\" at line #{index + 1} \n " unless (arr.length % 2).zero?
    end

    error_statement
  end

  def check_doctype(file)
    'add or correct Doctype as <!DOCTYPE html>' unless file.include? '<!DOCTYPE html>'
  end

  def check_lang(file)
    'add your language tag' unless file.include?(/<html lang=\"en\">/)
  end

  def check_alt(file)
    error_statement = ''

    file.each_with_index do |element, index|
      if element.match(/<img/) # element.gsub()
        error_statement << "add alt =\"\" to your img tag on line #{index + 1}" unless element.match(/alt/)
      end
    end

    error_statement
  end

  def check_structure(file)
    error_statement = ''

    structure = ['<html lang=\"en\">', '</html>', '<head>', '</head>', '<body>', '</body>']
    file_string = file.gsub(/\n|\t/, '')
    structure.any? { |tag| error_statement << "poor structure check your #{tag} tag" unless file_string.match(tag) }
    error_statement
  end

  def check_semantics(file)
    error_statement = ''

    semantics = ['<header>', '</header>', '<main>', '</main>', '<footer>', '</footer>']
    file_string = file.gsub(/\n|\t/, '')

    semantics.any? { |tag| error_statement << 'poor semantics' unless file_string.match(tag) }

    error_statement
  end

  def check_head_tag_contents(file)
    error_statement = ''
    head_contents = ['<title>', '<meta', '<link', '<style>']
    file_str = file.gsub(/\n|\t/, '')
    h1 = file_str =~ /<head>/
    h2 = file_str =~ %r{</head>}

    head_contents.each do |tag|
      if file_str.include?(tag)
        error_statement << "place #{tag} between <head></head>" unless (h1..h2).include? file_str.index(tag)
      end
    end

    error_statement
  end
end
