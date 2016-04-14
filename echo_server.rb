class EchoServer

  def initialize(reader, writer)
	 @reader = reader
	 @writer = writer
	 @welcome_message = "Welcome, please enter something to echo:"
	 @user_input = "echo!"
  end

  def start
	 welcome
	 read_input
  end

  def welcome
	 @writer.welcome_message(@welcome_message)
  end

  def read_input
	 @reader.get_input(@user_input)
  end

  def echo_to_user
	 @writer.repeat(@user_input)
  end

end
