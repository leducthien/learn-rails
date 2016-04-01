class Owner
  def name
    name = 'Foo'
  end

  def birthdate
    birthdate = Date.new(1981, 10, 17)
  end

  def countdown
    today = Date.today
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    if birthday > today
      countdown = birthday - today
    else
      countdown = birthday.next_year - today
    end
  end

end
