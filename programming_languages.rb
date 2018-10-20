require 'pry'

def reformat_languages(languages)
  
  new_hash = {}
  new_hash = languages[:oo].merge(languages[:functional])
  
  new_hash.each do |language_name, type|
    new_hash[language_name][:style] = []
    languages.each do |style, data|
      data.each do |language_name, language_type|
        if languages[style].has_key?(language_name)
          new_hash[language_name][:style] << style
        end
      end
    end
  end
  new_hash
end