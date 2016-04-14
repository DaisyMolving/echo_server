class FakeReader

  def initialize
	 @input = ""
  end

  def get_input(user_input)
	 @input = user_input
  end

  def last_input
	 @input
  end
end
