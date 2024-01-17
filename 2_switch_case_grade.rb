def school_grade(grade)
    case grade
    when 1..5
        "Elementary"
    when 6..8
        "Middle School"
    when 9..12
        "High School"
    else
        "College"
    end
end
grade = 7
puts "Grade \"#{grade}\" belongs to \'#{school_grade(grade)}\'"