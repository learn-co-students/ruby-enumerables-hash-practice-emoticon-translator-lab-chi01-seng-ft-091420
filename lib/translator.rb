require 'yaml' 
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  final_hash = {}
  emoticons.each do |key, value|
    final_hash[key] = {}
    final_hash[key][:english] = value[0]
    final_hash[key][:japanese] = value[1]
  end
  final_hash
end

def get_english_meaning(path, emoticon)
  load_library(path).each do |key, value|
    if value[:japanese] == emoticon
      return key
    
    end
  end
  "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(path, emoticon)
  load_library(path).each do |key, value|
    if 
  end 
end 
# # def get_english_meaning(path, emoticon)
# #   emoticons = load_library(path)
# #   #binding.pry
# #   english_emoticons = emoticon_lib[meaning][:english]
  
# #   if english_emoticons 
# #     english_emoticons
# #   else  
# #     print 'Sorry, that emoticon was not found'
  
# #   end
# # end

# # def get_japanese_emoticon(path, emoticon)
# #   emoticons = load_library(path)
# #   #japanese_emoticons = emoticons[:japanese][emoticon]
 
# #   if japanese_emoticons =! japanese_emoticons
# #     print 'Sorry, that emoticon was not found'
  
# #   end
# # end

# # def load_library(emoticon_file)
# #   emoticons = YAML.load_file(emoticon_file)

# #   emoticon_lib = {'get_meaning'  => {},
# #                   'get_emoticon' => {} }

# #   emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
# #     english = value[0]
# #     japanese = value[1]
# #     emoticon_lib['get_meaning'][japanese] = meaning
# #     emoticon_lib['get_emoticon'][english] = japanese
# #   end
# #   emoticon_lib
# # end

# # def get_english_emoticon(emoticon_file, emoticon)
# #   emoticon_lib = load_library(emoticon_file)
# #   english_emoticon = emoticon_lib['get_meaning'][emoticon]
# #   english_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
# # end

# # def get_japanese_emoticon(emoticon_file, emoticon)
# #   emoticon_lib = load_library(emoticon_file)
# #   japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
# #   japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
# # end
