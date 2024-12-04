class ValidationError < StandardError

  attr_reader :error

  def initialize(msg = nil)
    super
    @error = msg
  end

end
