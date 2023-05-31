require 'pry'

class CircularQueue
  attr_accessor :buffer, :oldest, :current

  def initialize(buffersize)
    @buffer = [nil] * buffersize
    @oldest = []
    @current = 0
  end

  def dequeue
    return nil if buffer.all? { |element| element == nil}
    buffer[buffer.fetch(oldest.first)] = nil
    oldest.shift
  end
  
  def enqueue(num)
    oldest << num
    if buffer[current] == nil
      buffer[current] = num
    elsif buffer.all? {|ele| ele != nil }
      buffer[buffer.fetch(oldest.first)] = num
      oldest.shift
    end

    if @current + 1 >= buffer.size
      @current = 0 
    end
    until buffer[@current] == nil 
      @current += 1 if @current < 3
    end
    puts "current is #{current} and oldest is #{oldest}"
  end


end





queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# queue = CircularQueue.new(4)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 4
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil