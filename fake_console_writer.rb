class FakeWriter

  def initialize
	 @output = ""
  end

  def welcome_message(message)
	 @output = message
  end

  def last_message_printed
	 @output
  end

end
