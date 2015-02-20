module View
  def self.menu
    puts "What would you like to do? (choose a number)"
    puts "1. Rate a teacher"
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
    puts "What teacher would you like to rate?"
  end

  def self.display_teachers(teachers)
    puts teachers.join(" | ")
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
end
