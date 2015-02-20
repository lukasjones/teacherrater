module Controller
  def self.run!
    puts "Options:"
    puts "Rate or view average"

    rate_or_options_choice # branch to rate teacher or get teacher average
  end

  def self.rate_or_options_choice
    case gets.chomp.downcase
    when "rate"
      rate
    when "view average"
      view_average
    end
  end




# ------------------------------RATE------------------------------------
  def self.rate
    puts "What's your name?"
    student_name = gets.chomp
    # Student.create(name: student_name)
    puts "Ok #{student_name} what teacher would you like to rate?"
    puts "Rock | Mashmellow | Sunny | Gatherer"
    teacher_name = gets.chomp.downcase
    # teacher_to_rate = Teacher.where(name: teacher_name)

    # prompt for which teacher you are rating
    # teacher_rating_hash = View.ask_questions_and_get_input_in_hash
    # current_teacher = Teacher.new(teacher_rating_hash)
    # answer = View.ask_if_they_want_to_submit(current_teacher)

    puts "questions"
    gets.chomp
    puts "Submit: y/n "
    answer = gets.chomp.downcase
    case answer #  is this necessary?
    when 'y'
      puts "submitted"
      # current_teacher.save
    when 'n'
      puts "not submitted"
      # prompt user for what they want to do then.
    end
    # give user funny input based off scores of teacher.

  end



# ---------------------------VIEW AVERAGE---------------------------------
  def self.view_average
    puts "Select a teacher."
    puts "Rock | Mashmellow | Sunny | Gatherer" #teachers from Teacher class
    teacher = gets.chomp









    #ratings = Rating.where(teacher_id: teacher.id)
    # humor = 0
    # cleanliness = 0
    # punctuality = 0
    # clarity = 0
    # competence = 0
    #
    #
    # ratings.map do |rating|
    #   humor += rating.humor
    #   cleanliness += rating.cleanliness
    #   punctuality += rating.punctuality
    #   clarity += rating.clarity
    #   competence += rating.competence
    # end
    #
    # give list of teachers and prompt for which teacher
    # find the average ratings of that teacher and display in a nice format

  end

end














