require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size 
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    assert_equal(@todo1, @list.shift)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    assert_equal(@todo3, @list.pop)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
    @todo1.done!
    @todo2.done!
    @todo3.done!
    assert_equal(true, @list.done?)
  end 

  def test_add_raises_error
    assert_raises(TypeError) { @list.add('string') }
  end

  def test_shovel
    @todo4 = Todo.new('New')
    @list << @todo4
    assert_equal([@todo1, @todo2, @todo3, @todo4], @list.to_a)
  end

  def test_add
    @todo4 = Todo.new('New')
    @list.add(@todo4)
    assert_equal([@todo1, @todo2, @todo3, @todo4], @list.to_a)
  end

  def test_item_at
    assert_raises(IndexError) { @list.item_at(100) }
    assert_equal(@todo1, @list.item_at(0) )
  end

  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(100) }
    assert_equal(@todo1.done!, @list.mark_done_at(0))
    assert_equal(true, @todo1.done?)
    assert_equal(false, @todo2.done?)
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_done_at(100) }
    @todo1.done!
    @todo2.done!
    @list.mark_undone_at(0)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
  end

  def test_each
    assert_equal(@list, @list.each { |n| "hi"})

    @list.each { |todo| todo.done! }
    @todo1.done!
    @todo2.done!
    @todo3.done!
    assert_equal(@todos, @list.to_a )
  end

end