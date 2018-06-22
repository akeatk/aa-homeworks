class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push el
    el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[0]
  end
end

queue1 = Queue.new
5.times {|i| p queue1.enqueue i + 1}
p queue1.queue
until queue1.queue.empty?
  p queue1.peek
  p queue1.dequeue
end
