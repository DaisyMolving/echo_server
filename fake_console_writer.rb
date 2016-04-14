class FakeWriter

  def initialize
	 @output = ""
  end

  def welcome_message(message)
	 @output = message
  end

  def repeat(user_input)
	 @output = user_input
  end

  def last_message_printed
	 @output
  end

end
