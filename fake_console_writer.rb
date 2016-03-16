class FakeConsoleWriter

  def initialize
	 @output = ""
  end
  
  def write(input)
		@output += input
  end

  def last_message_printed
	 @output
  end
end
