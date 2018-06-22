class Stack
  attr_reader :stack

  def initialize
    # create ivar to store stack here!
      @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack.push el
    el
  end

  def pop
    # removes one element from the stack
    stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    stack[-1]
  end
end

stack1 = Stack.new
5.times {|i| p stack1.push i + 1}
p stack1.stack
until stack1.stack.empty?
  p stack1.peek
  p stack1.pop
end
