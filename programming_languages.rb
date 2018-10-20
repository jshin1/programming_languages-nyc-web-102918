require 'pry'

def reformat_languages(languages)
  # your code here
  
  new_hash = {}
  new_hash = languages[:oo].merge(languages[:functional])
  
  languages.each do |style, language_data|
    language_data.each do |language_name, type|
      new_hash[language_name][:style] = []
      if languages[style].has_key?(language_name)
        new_hash[language_name][:style] << style
      end
    end
  end
  new_hash
  binding.pry
end