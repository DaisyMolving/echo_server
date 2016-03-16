class EchoServer
  def initialize(reader, writer)
	 @reader = reader
	 @writer = writer
	 @welcome_message = "Welcome, please enter something to echo"
	 @user_input = ""
  end

  def start
	 print_welcome_message
  end
  
  def print_welcome_message
	 @writer.write(@welcome_message)
  end

  def read_user_input
	 @reader.read(@user_input)
  end
end
