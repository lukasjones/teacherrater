module View
  def self.menu
    puts "What would you like to do? (choose a number)"
    puts "1. Rate (or add) a teacher"
    puts "2. View ratings"
    puts "3. Exit"
  end

  def self.get_numerical_input(acceptable_values)
    input = gets.chomp.to_i
    until acceptable_values.include?(input)
      puts "bad input"
      input = gets.chomp.to_i
    end
    input
  end

  def self.get_text_input
    gets.chomp
  end

  def self.ask_student_name
    puts "What's your name?"
  end

  def self.ask_teacher_name
    puts "Which teacher?"
  end

  def self.spacing
    puts
    puts
  end

  def self.pause
    puts "press enter to continue"
    gets
  end

  def self.display_teachers(teachers)
    teachers.each do |teacher|
      puts teacher.name
    end
  end

  def self.pad_word(number_of_spaces, word)
    padding = number_of_spaces - word.length
    word.to_s + ":" + " " * padding
  end

  def self.get_ratings
    ratings = {}
    [:humor, :cleanliness, :punctuality, :clarity, :competence].each do |attribute|
      puts "What is your rating for #{attribute}? (1 - 10)"
      ratings[attribute] = self.get_numerical_input(1..10)
    end
    ratings
  end

  def self.ask_are_you_sure
    puts "Submit: y/n "
    input = gets.chomp.downcase
    until ['y', 'n'].include?(input)
      puts "Submit: y/n "
      input = gets.chomp.downcase
    end
    input
  end

  def self.confirm_submission
    puts "submitted"
  end

  def self.deconfirm_submission
    puts "not submitted"
  end

  def self.list_averages(averages_hash)
    puts "-------------------------"
    averages_hash.each do |attribute, average|
      puts "#{pad_word(11, attribute)} #{average}"
    end
    puts
  end
end
