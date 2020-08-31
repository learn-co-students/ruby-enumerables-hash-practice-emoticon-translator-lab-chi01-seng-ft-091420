require 'yaml' 
require 'pry'

# # 'happy' => {
# #         :english => ":)",
# #         :japanese => "(＾ｖ＾)"

def load_library(path)
  # emoticons = YAML.load_file(path)
  # lib = {:english => {}, :japanese => {}}
  # emoticon_lib = {"get_meaning" => {}, "get_emoticon" =>{}}
  # emoticons.each do |meaning, value| 
  #   get_meaning = {}
  #   english = value[0]
  #   japanese = value[1]
  #   lib[:english][english] = meaning
  #   lib[:japanese][japanese] = japanese
    #binding.pry 
    # emoticon_lib["get_meaning"][english] = meaning 
    # emoticon_lib["get_emoticon"][japanese] = japanese
  
  
  # end
  # emoticon_lib
  emoticons = YAML.load_file(path)
  emoticon_lib = {"get_meaning" => {}, "get_emoticon" =>{}}
  emoticons.each do |key, value|
    emoticon_lib["get_meaning"][value[1]] = key 
    emoticon_lib["get_emoticon"][value[0]] = emoticons[key][1]
  
  end
  
end

# def get_english_meaning(path, emoticon)
#   emoticons = load_library(path)
#   #binding.pry
#   english_emoticons = emoticon_lib[meaning][:english]
  
#   if english_emoticons 
#     english_emoticons
#   else  
#     print 'Sorry, that emoticon was not found'
  
#   end
# end

# def get_japanese_emoticon(path, emoticon)
#   emoticons = load_library(path)
#   #japanese_emoticons = emoticons[:japanese][emoticon]
 
#   if japanese_emoticons =! japanese_emoticons
#     print 'Sorry, that emoticon was not found'
  
#   end
# end

def load_library(emoticon_file)
  emoticons = YAML.load_file(emoticon_file)

  emoticon_lib = {'get_meaning'  => {},
                  'get_emoticon' => {} }

  emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = meaning
    emoticon_lib['get_emoticon'][english] = japanese
  end
  emoticon_lib
end

def get_english_emoticon(emoticon_file, emoticon)
  emoticon_lib = load_library(emoticon_file)
  english_emoticon = emoticon_lib['get_meaning'][emoticon]
  english_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end

def get_japanese_emoticon(emoticon_file, emoticon)
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end
