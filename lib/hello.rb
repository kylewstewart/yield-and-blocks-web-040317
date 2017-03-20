def hello_t(array)
  i = 0
    while i < array.length
        if array[i].start_with?("T") || array[i].start_with?("t")
          yield(array[i])
        else array.delete(array[i])
        end
      i = i + 1
    end
    array
end


hello_t(["Tim", "Tom", "Jim"]) {|name| puts "Hi, #{name}"}
