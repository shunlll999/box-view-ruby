# BoxViewError extends the default exception class.
# It adds a code field.
class BoxViewError < StandardError
  # An error code string
  @code = nil
  
  # Get the error code
  def code
    @code
  end

  def initialize(message, code)
    super message
    @code = code
  end

  class NotReady < BoxViewError
    def initialize(message)
      super message, 202
    end
  end

  class RateLimitExceeded < BoxViewError
    def initialize(message)
      super message, 429
    end
  end
end
