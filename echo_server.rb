class EchoServer

  def initialize(reader, writer)
	 @reader = reader
	 @writer = writer
	 @welcome_message = "Welcome, please enter something to echo:"
  end

  def start
	 @writer.welcome_message(@welcome_message)
  end
end
