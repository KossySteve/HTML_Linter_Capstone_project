require_relative '../lib/error_checks'

RSpec.describe Checks do
  include Checks
  describe '#check_tags(file)' do
    it 'returns error statement' do
      expect(check_tags(['<titlemint.com/sign_up</title>'])).to eql("fix tags at line #{0 + 1} ")
    end
  end
  describe '#check_apostrophe(file)' do
    it 'returns error statement' do
      expect(check_apostrophe(['<a href=\"google.com>login</a>'])).to eql("fix apostrophe \"\" at line #{0 + 1} \n ")
    end
  end
  describe '#check_doctype(file)' do
    it 'returns error statement' do
      expect(check_doctype([])).to eql('add or correct Doctype as <!DOCTYPE html>')
    end
  end
  describe '#check_lang(file)' do
    it 'returns error statement' do
      expect(check_lang([])).to eql('add your language tag')
    end
  end
  describe '#check_alt(file)' do
    it 'returns error statement' do
      expect(check_alt(['<img src=\"assets/logo.png\">'])).to eql("add alt =\"\" to your img tag on line #{0 + 1}")
    end
  end
  describe '#check_structure(file)' do
    it 'returns error statement' do
      expect(check_structure(File.read('index.html'))).to eql('poor structure check your <html lang=\"en\"> tag')
    end
  end
  describe '#check_semantics(file)' do
    it 'returns error statement' do
      expect(check_semantics('<img src=\"assets/logo.png\">')).to eql('poor semantics')
    end
  end
  describe '#check_head_tag_contents(file)' do
    it 'returns error statement' do
      expect(check_head_tag_contents(File.read('index.html'))).to eql('place <title> between <head></head>')
    end
  end
end
