
# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.
# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end


class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  # rest of class needs implementation
  def add(todo_object)
    if todo_object.class == Todo
      self.todos << todo_object
    else
      raise TypeError.new("Can only add Todo objects")
    end
  end

  def size
    todos.size
  end

  def first
    todos.first
  end
  
  def last
    todos.last
  end

  def to_a
    todos
  end

  def done?
    todos.all? { |todo_obj| todo_obj.done? }
  end

  def done!
    todos.each do |todo_obj|
      todo_obj.done! 
    end
  end

  def item_at(item)
    todos.fetch(item)
  end

  def mark_done_at(item)
    todos.fetch(item).done!
  end 

  def mark_undone_at(item)
    todos.fetch(item).undone! 
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end 

  def remove_at(index)
    todos.delete_at(index)
  end

  def to_s
    puts "---- Today's Todos ----"
    todos.each do |obj|
      puts obj
    end
  end

  def each
    todos.each do |todo|
      yield(todo)
    end
    self
  end

  def select
    result = TodoList.new('result')
    each do |todo|
      result.add(todo) if yield(todo)
    end
    result #returns a Todolis of selected items
  end

  def find_by_title(string)
    result = select do |todo|
      todo.title == string
    end
    result.first
  end

  def all_done
    select do |todo|
      todo.done?
    end
  end

  def all_not_done
    select do |todo|
      todo.done? == false
    end
  end

  def mark_done(string)
    todo = find_by_title(string)
    todo.done!
  end

  def mark_all_done
    each do |todo|
      todo.done!
    end
  end

  def mark_all_undone
    each do |todo|
      todo.undone!
    end
  end

end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

results = list.find_by_title('Buy milk')
done_items = list.all_done
not_done_items = list.all_not_done
mark_done = list.mark_all_done
mark_undone = list.mark_all_undone

p results
p mark_done
p done_items
p not_done_items