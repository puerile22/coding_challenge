class Queue
  attr_reader :head
  def empty?
    @head.nil?
  end

  def push(node)
    if empty?
      @head = Node.new(node)
      return
    else 
      @head.tail.next = Node.new(node)
    end
  end

  def shift
    return nil if empty?
    @head = @head.next
    return @head
  end

  class Node
    attr_reader :node
    attr_accessor :next
    def initialize(node)
      @node = node
    end

    def tail
      @next ? @next.tail : self
    end

    def find(node)
      return self if @node == node
      return nil if @next.nil?
      @next.find(node)
    end

    def find_before(node)
      return self if @next.node == node
      return nil if @next.nil?
      @next.find_before(node)
    end
  end
end