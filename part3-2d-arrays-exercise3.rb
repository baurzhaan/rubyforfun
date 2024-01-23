=begin
John Smith has a business where they have large pool of phone numbers, and they sell these phone numbers for advertisements. They want to sign a contract with you, but before they want to ensure you can follow their requirements and capable of delivering quality software. They say: we have phone numbers with letters, like 555-MATRESS. When customers type this phone number on phone keyboard, hey reach “555-628-7377”. Write a method in Ruby language that will translate phone numbers without dashes, like “555MATRESS” into phone numbers with digits only, like 5556287377.

puts phone_to_number('555MATRESS') # should print 5556287377
=end

def phone_to_number(phone_number_text)
  
  phone_number_text.downcase!
  
  result = []

  translation_table = [
    %i(0),
    %i(1),
    %w(a b c),
    %w(d e f),
    %w(g h i),
    %w(j k l),
    %w(m n o),
    %w(p q r s),
    %w(t u v),
    %w(w x y z)
  ]

  phone_number_text.split('').each do |ch|
    if ch.match(/[0-9]/)
      result << ch
      next
    else
      translation_table.each_index do |i|
        if translation_table[i].include?(ch)
          result << i
          break
        end
      end
    end
  end

  result.join()
end

puts phone_to_number('555MATRESS')
puts phone_to_number('HELLO43IT')