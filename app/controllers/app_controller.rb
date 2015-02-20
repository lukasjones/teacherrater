require_relative "../views/app_view"

module Controller
  def self.run!
    View.menu
    menu_input = View.get_numerical_input(1..3)
    rate_or_options_choice(menu_input)
    #rate_or_options_choice # branch to rate teacher or get teacher average

    print "\e[2J"
    print "\e[H"
    self.run!
  end

  def self.rate_or_options_choice(menu_input)
    case menu_input
    when 1
      rate
    when 2
      view_average
    when 3
      exit
    end
  end

  def self.pick_teacher
    View.ask_teacher_name
    teachers = ["Rock", "Mashmellow", "Sunny", "Gatherer"]
    View.display_teachers(teachers)
    View.get_text_input
  end


# ------------------------------RATE------------------------------------
  def self.rate
    View.ask_student_name
    student_name = View.get_text_input

    teacher_name = pick_teacher

    teacher_rating_hash = View.get_ratings
    # current_teacher = Teacher.new(teacher_rating_hash)
    # answer = View.ask_if_they_want_to_submit(current_teacher)

    answer = View.ask_are_you_sure
    case answer #  is this necessary?
    when 'y'
      # student = Student.find_or_create_by(name: student_name)
      # teacher_to_rate = Teacher.find_by(name: teacher_name)
      # rating = Rating.create(student_id: student.id, teacher_id: teacher_to_rate.id, **teacher_rating_hash)
      View.confirm_submission
    when 'n'
      View.deconfirm_submission
    end
    sleep(2)

    # give user funny input based off scores of teacher.

  end




# ---------------------------VIEW AVERAGE---------------------------------
  def self.view_average
    teacher_name = pick_teacher









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














