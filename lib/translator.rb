require 'pry'
require 'yaml'

def load_library(file_path)
  emots = YAML.load_file(file_path)
  final = emots.each_with_object({}) do |(key, value), final_hash|
    if !final_hash[key]
      final_hash[key] = {
        :english => value[0], 
        :japanese => value[1]
      }
    end
  end
  final
end

def get_japanese_emoticon(file, emoji)
  emot_lib = load_library(file)
  emot_lib.each do |key, value|
    if emot_lib[key][:english] == emoji
      return emot_lib[key][:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoji)
  emot_lib = load_library(file)
  emot_lib.each do |key, value|
    if emot_lib[key][:japanese] == emoji
      return key
    end
  end
  return "Sorry, that emoticon was not found"
end