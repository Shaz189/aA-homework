class Stack
  attr_accessor :st
    def initialize
      @st = []
    end

    def add(el)
      self.st << el
    end

    def remove
      self.st.pop
    end

    def show
      return self.st.dup
    end
  end
