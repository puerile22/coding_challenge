class LinkedList
  attr_reader :head
  def empty?
    @head.nil?
  end

  def push(node)
    new_node = Node.new(node)
    new_node.next = @head
    @head = new_node
  end

  def pop
    return nil if empty?
    popped = @head
    @head = @head.next
    return popped
  end

  def delete(node)
    return nil if empty?
    if @head.node == node
      deleted = @head
      @head = @head.next
    else
      before = @head.find_before(node)
      return nil if before.nil?
      deleted = before.next
      before.next = deleted.next
    end
    return deleted
  end

  def insert_after(node1, node2)
    return push(node2) if node1.nil?
    after = @head.find(node1)
    after.next = Node.new(node2)
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