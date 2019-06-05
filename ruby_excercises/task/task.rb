class Task

  def convert(input)
    list = input.split("")
    temp = []
    for character in list
      i = list.index(character)
      current = character * (list.size - i)
      temp.push(current)
    end
    output = temp.join("-")
    print output
  end


end


task = Task.new
task.convert("qwert")