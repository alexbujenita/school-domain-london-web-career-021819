class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster.key?(grade)
      roster[grade].push(student_name)
    else
      roster[grade] = []
      roster[grade].push(student_name)
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each do |k_int, v_arr|
      sorted = v_arr.sort
      sorted_hash[k_int] = sorted
    end
    sorted_hash
  end
end
