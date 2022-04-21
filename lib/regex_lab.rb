def starts_with_a_vowel?(word)
    word.match(/^[aeiouAEIOU]/) ? true : false
end



def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/un\w+ing/)    #Or   text.scan(/un.*?ing/)
end



def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/)
end

#Or:
# def words_five_letters_long(text)
  #  array = text.split(" ")
   # array.grep(/\b\w{5}\b/)
# end


def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match(/^[A-Z]/) && text.match(/[\.]$/) ? true : false     
    #or  text.match(/^[A-Z].*\./) ? true : false   
    #or  text.match(/\b[A-Z][a-zA-Z]*[[:punct:]]\s/)
end



def valid_phone_number?(phone)
    #or phone.match(/\d{10}/) 
    phone.match(/([0-9] ?){10}/) || phone.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone.match(/\b([0-9]{7})\b/) ? true : false
end



#or
def valid_phone_number?(phone)
    phone.match(/\b\W?\d{3}\W*\d{3}*\d{4}\b/)
end