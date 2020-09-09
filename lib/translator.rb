# require modules her
require "yaml"
require 'pry'

def load_library(file)
  
  emoticon_lib = YAML.load_file(file)
  
  new_hash = {}
  
 emoticon_lib.each do |key,value|
  new_hash[key] = {}    
  new_hash[key][:english] = value[0]    
  new_hash[key][:japanese] = value[1]  
     
   end 

new_hash 
end 

def get_english_meaning(file, emoticon) 
  

    emoticon_lib = load_library(file) 
  
   found_emoticon = emoticon_lib.keys.find do |key|
     
    emoticon_lib[key][:japanese] == emoticon
  end
    found_emoticon ? found_emoticon : "Sorry, that emoticon was not found"

  
end
  
def get_japanese_emoticon(file, emoji)
  emoticon_lib = load_library(file) 
  
    found_emoji = emoticon_lib.keys.find do |key| 
      emoticon_lib[key][:english] == emoji
    #binding.pry 
      end
  #binding.pry
        found_emoji ? found_emoji = emoticon_lib[found_emoji][:japanese] : "Sorry, that emoticon was not found"
  #binding.pry 
      end 
      

     
     

  
#   emoticon_lib.each do |key,value|
#     emoticon[:english] = value[1]    
#   end 

# end

