to_sort = [4,3,78,2,0,2]

def bubble_sort(ar)
    l = ar.length-1
    loop do
      still = false
      l.times do |num|
        if ar[num] > ar[num+1]
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

bubble_sort(to_sort)