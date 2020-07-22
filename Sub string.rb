def substrings(string, array)
    sub_array = string.split(/[\s,,]/)
    new_hash = Hash.new
  
    array.each do |dictionaryw|
      sum = 0
      sub_array.each do |subw|
        if (subw.downcase).include?(dictionaryw)
          sum += 1
          new_hash[dictionaryw] = sum
        end
      end
    end
  
    return new_hash
  end
  
  substrings("below", dictionary)
  substrings("Howdy partner, sit down! How's it going?", dictionary)