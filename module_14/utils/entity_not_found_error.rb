
class EntityNotFoundError < StandardError
  def initialize(msg = nil)
    @message = msg
  end

  def to_s
    "Entity with #{@message} not found"
  end
end
