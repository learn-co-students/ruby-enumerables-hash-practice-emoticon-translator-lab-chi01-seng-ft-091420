require 'yaml'
require 'pry'

# {
#   'happy' => {
#      :english => ":)",
#      :japanese => "(＾ｖ＾)"
#   }
# }

def load_library(path)
  emoticons = YAML.load_file(path)
  neater_hash = {}
   emoticons.each do |meaning, translations|
      neater_hash[meaning] = {}
      neater_hash[meaning][:english] = translations[0]
      neater_hash[meaning][:japanese] = translations[1]
    # binding.pry
  end
  neater_hash
  # binding.pry
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  library.each do |value, meaning|
    if library[value][:japanese] == emoticon
       return value
      #  binding.pry
     end
  end
  return "Sorry, that emoticon was not found"
end 

  def get_japanese_emoticon(path, emoticon)
     library = load_library(path)
     library.each do |value, meaning|
      if library[value][:english] == emoticon
        return library[value][:japanese]
       end
    end
     return "Sorry, that emoticon was not found"
   end

  