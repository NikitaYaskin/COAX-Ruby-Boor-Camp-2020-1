class Table

  def prompt(*args)
    print(*args)
    gets
  end

  def getData(var)
    var = prompt "Input #{ var }: "
  end

  def getAllVariable
    all = []
    for variable in ['name', 'age', 'email']
      all.push(getData(variable))
    end
    return all
    all.clear
  end

  def repeateTenTimes
    list = []
    for i in 1..10
      list.push(getAllVariable)
    end 
    return list
  end
end

object = Table.new
print object.repeateTenTimes