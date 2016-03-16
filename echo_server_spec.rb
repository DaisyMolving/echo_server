require_relative './echo_server'
require_relative './fake_console_writer'

describe EchoServer do

  it 'should print welcome message to the output' do
	 @welcome_message = "Welcome, please enter something to echo"
	 fake_writer = FakeConsoleWriter.new
	 echo_server = EchoServer.new(nil, fake_writer)
	 echo_server.start
	 expect(fake_writer.last_message_printed).to eq @welcome_message
  end

end
