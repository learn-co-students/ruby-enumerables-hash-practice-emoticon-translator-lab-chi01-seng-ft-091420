require 'yaml'
require 'pry'

def load_library(file)
  # code goes here
library = YAML.load_file(file)
results = {}
library.each do |key, val|
results[key] = {}
results[key][:english] = val[0]
results[key][:japanese] = val[1]
#binding.pry
  end
results
end

def get_japanese_emoticon (file, emo)
    # code goes here
    library = load_library(file)
    japanese = nil
 library.each do |key, val|
            if val[:english] == emo
      japanese = val[:japanese]
        end
      end
      if !japanese
         "Sorry, that emoticon was not found"
       else
         japanese
      end
     end

def get_english_meaning (file, emo)
    # code goes here
    library = load_library(file)
    english = nil
    library.each do |key,val|
      if val[:japanese] == emo
        english = key
  end
end
  if english 
    english
  else
    "Sorry, that emoticon was not found"
  end
end