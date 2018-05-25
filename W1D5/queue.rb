class Queue
  attr_accessor :que
  def initialize
    @que = []
  end

  def enqueue(el)
    self.que << el
  end

  def dequeue
    self.que.shift
  end

  def show
    return self.que.dup
  end
end
