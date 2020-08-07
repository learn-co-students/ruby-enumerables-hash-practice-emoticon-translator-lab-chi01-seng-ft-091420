# require modules here
require 'pry'
require 'yaml'

def load_library(path ='lib/emoticons.yml')
    library = YAML.load_file(path)
  # code goes here
  result = library.each_with_object({}) do |(key, value), hash|
    if !hash[key]
      hash[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
  end
  result
end

def get_japanese_emoticon(library, english_emoticon)
  
  library = load_library(library)
  library.each do |value, meaning|
       if library[value][:english] == english_emoticon
         return library[value][:japanese]
   end
  end
  return "Sorry, that emoticon was not found" 
end

def get_english_meaning(library, japanese_emoticon)
 
  library = load_library(library)
   library.each do |value, meaning|
       if library[value][:japanese] == japanese_emoticon
         return value
      end
    end
    return "Sorry, that emoticon was not found" 
  end