def substrings (word, dictionary)
  dictionary.reduce({}) do |obj, substring| 
    if word.include?(substring)
      # if  obj[substring] == nil
      #   obj[substring] = 0
      # end
      obj[substring] = word.scan(/(?=#{substring})/).count
    end
    obj
  end
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
