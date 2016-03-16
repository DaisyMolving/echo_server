class EchoServer
  def initialize(reader, writer)
	 @reader = reader
	 @writer = writer
	 @welcome_messagee = "Welcome, please enter something to echo"
  end

  def start
	 print_welcome_message
  end
  
  def print_welcome_message
	 @writer.write(@welcome_messagee)
  end
end
