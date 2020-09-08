# require modules here

def load_library
  {
      'happy' => {
         :english => ":)",
         :japanese => "(＾ｖ＾)"
      }
   }
end

def get_japanese_emoticon
  get_japanese_emoticon["./lib/emoticons.yml", ":)"]
     => "(＾ｖ＾)"
   get_japanese_emoticon["./lib/emoticons.yml", ":o"]
end

def get_english_meaning
  get_english_meaning[lib/emoticons.yml]
end