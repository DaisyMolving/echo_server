describe EchoServer do

  it "should print welcome message to the output" do
	 @welcome_message = "Welcome, please enter something to echo:"
	 writer = FakeWriter.new
	 server = EchoServer.new(nil, writer)
	 server.start
	 expect(writer.last_message_printed).to eq @welcome_message
  end
end
