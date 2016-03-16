require_relative './echo_server'
require_relative './fake_console_writer'
require_relative './fake_console_reader'

describe EchoServer do

  it 'should print welcome message to the output' do
	 @welcome_message = "Welcome, please enter something to echo"
	 fake_writer = FakeConsoleWriter.new
	 echo_server = EchoServer.new(nil, fake_writer)
	 echo_server.start
	 expect(fake_writer.last_message_printed).to eq @welcome_message
  end

  it 'should read user input' do
	 @user_input = "hello"
	 fake_writer = FakeConsoleWriter.new
	 fake_reader = FakeConsoleReader.new
	 echo_server = EchoServer.new(fake_reader, fake_writer)
	 echo_server.start
	 expect(fake_reader.last_message_read).to eq @user_input
  end
end
