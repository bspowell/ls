class Banner
  def initialize(message)
    @message = message
    @length = message.length
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-" + ("-" * @length) + "-+"
  end

  def empty_line
    "| " + (" " * @length) + " |"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner2 = Banner.new('')
puts banner2