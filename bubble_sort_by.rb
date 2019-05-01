def bubble_sort_by(ar)
    l = ar.length-1
    loop do
      still = false
      l.times do |num|
        if yield(ar[num], ar[num + 1]) > 0
          ar[num], ar[num+1] = ar[num+1], ar[num]
          still = true
        end
      end
     if !still
        break
     end
    end
  ar
end
bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end