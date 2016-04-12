class Owner
  def name
    Rails.logger.debug 'Enter Owner new method'
    name = 'Foo'
    #Rails.logger.debug 'Owner name is ' + name
    # The last statement in a method will be the return value. In this case the
    # return value is true
    #Rails.logger.debug 'Exit Owner new method'
  end

  def birthdate
    # why is it possible to use Ruby API Date class without some require statement?
    birthdate = Date.new(1981, 10, 17)
  end

  def countdown
    Rails.logger.debug 'Enter Owner countdown method'
    today = Date.today
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    if birthday > today
      countdown = birthday - today
    else
      countdown = birthday.next_year - today
    end
    #Rails.logger.debug 'Exit Owner countdown method'
  end

end
