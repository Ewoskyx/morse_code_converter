def decode_char(str)
    morse_hash = {a: ".-", b: "-...", c: "-.-.", d: "-..", e: ".", f: "..-.", g: "--.", h: "....", i: "..", j: ".---", k: "-.-", l: ".-..", m: "--", n: "-.", o: "---", p: ".--.", q: "--.-", r: ".-.", s: "...", t: "-", u: "..-", v: "...-", w: ".--", x: "-..-", y: "-.--", z: "--.."}
    morse_hash.each do |key,value|
        if value === str
           return "#{key.to_s.upcase}" 
        end
    end
end
    
def decode_word(str)
    res = ""
    arr = str.split(" ")
         arr.each do |item|
         res += decode_char(item)
        end
    print res+=" "
end  
    
def decode(str)
        if str.include? "/"
         str["/"]= " "
        end
        arr = str.split("   ")
        arr.each do |item|
          decode_word(item)
        end
end
    decode("-- -.--   -. .- -- .") 
    # MY NAME
    puts("\n")
    decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")
    # A BOX FULL OF RUBIES
    puts("\n")
    decode("-.-. --- -.. . -..   -... -.--   . ...- .-. . -.   .- -. -..   -.- .- .-.. --- .-.. ---")
    # CODED BY EVREN AND KALOLO

    
    