require_relative './fake_console_writer'
require_relative './fake_console_reader'
require_relative './echo_server'

describe EchoServer do

  it "should print welcome message to the output" do
	 @welcome_message = "Welcome, please enter something to echo:"
	 writer = FakeWriter.new
	 reader = FakeReader.new
	 server = EchoServer.new(reader, writer)
	 server.start
	 expect(writer.last_message_printed).to eq @welcome_message
  end

  it 'should read user input' do
	 user_input = "echo!"
	 writer = FakeWriter.new
	 reader = FakeReader.new
	 server = EchoServer.new(reader, writer)
	 server.start
	 expect(reader.last_input).to eq user_input
  end
end
