class FakeConsoleReader

  def initialize
	 @input = "hello"
  end
  
  def read(user_input)
	 @input += user_input
  end
  
  def last_message_read
	 @input
  end
end
